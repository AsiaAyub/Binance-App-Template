import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CoinDescription extends StatefulWidget {
  const CoinDescription({super.key, required this.id});

  final dynamic id;

  @override
  State<CoinDescription> createState() => _CoinDescriptionState();
}

class _CoinDescriptionState extends State<CoinDescription> {
  final String coinName = '';
  final String coinSymbol = '';
  List<_SalesData> data = [];
  double currentPrice = 68701;
  int selectedButton = 1;
  List<double> priceList = [];
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    generateRandomPrice();
    generateDummyData();
  }

  generateRandomPrice() {
    Random random = Random();
    List<double> pList = [];

    for (int i = 0; i < 72; i++) {
      pList.add(random.nextDouble());
    }
    setState(() {
      priceList = pList;
    });
  }

  // Function to generate dummy data for 1 hour with price points every 5 minutes
  generateDummyData() {
    List<_SalesData> dataDummy = [];

    int time = 0;
    int n = 0;

    if (selectedButton == 1) {
      n = 30;
    } else if (selectedButton == 2) {
      n = 2 * 24;
    } else if (selectedButton == 3) {
      n = 8 * 7;
    } else if (selectedButton == 4) {
      n = 30 * 2;
    } else if (selectedButton == 5) {
      n = 12 * 6;
    }

    for (int i = 0; i < n; i++) {
      time += i * 2;

      double priceFluctuation = (priceList[i] * 1000 - 500);
      double simulatedPrice = currentPrice + priceFluctuation;

      dataDummy.add(_SalesData(time.toString(), simulatedPrice));
    }

    setState(() {
      data = dataDummy;
    });
  }

  handleButtonTap(int index) async {
    setState(() {
      isLoading = true;
    });

    await Future.delayed(const Duration(seconds: 1));
    setState(() {
      selectedButton = index;
      generateDummyData();
      isLoading = false;
    });
  }

  _SalesData getHighestSalesData() {
    return data.reduce((a, b) => a.sales > b.sales ? a : b);
  }

  _SalesData getLowestSalesData() {
    return data.reduce((a, b) => a.sales < b.sales ? a : b);
  }

  @override
  Widget build(BuildContext context) {
    final _SalesData highest = getHighestSalesData();
    final _SalesData lowest = getLowestSalesData();
    final formatter = NumberFormat("#,###,##0.0#");
    final maxm = highest.sales + 100;
    final minm = lowest.sales - 100;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.transparent,
        actions: const [
          Padding(
              padding: EdgeInsets.all(10),
              child: Icon(
                Icons.notifications_rounded,
                color: Colors.white60,
              )),
          Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 20, 10),
              child: Icon(
                Icons.star,
                color: Colors.white60,
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.only(left: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text.rich(TextSpan(children: [
                  const TextSpan(
                      text: 'Dogecoin ',
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                  TextSpan(
                      text: 'DOGE'.toUpperCase(),
                      style:
                          const TextStyle(color: Colors.white60, fontSize: 15))
                ])),
                const Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    '\$0.15613',
                    style: TextStyle(
                        fontSize: 36,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    '+2.96%',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.green,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                    padding: const EdgeInsets.only(right: 9),
                    width: double.infinity,
                    height: 340,
                    child: isLoading
                        ? Container(
                            width: 100,
                            height: 50,
                            alignment: const Alignment(0, 0),
                            child: const CircularProgressIndicator(
                              color: Colors.orange,
                            ))
                        : SfCartesianChart(
                            enableAxisAnimation: false,
                            plotAreaBorderWidth: 0,
                            margin: EdgeInsets.zero,
                            // Enable tooltip
                            tooltipBehavior: TooltipBehavior(enable: false),
                            // Customize X and Y axis
                            primaryXAxis: const CategoryAxis(
                              axisLine: AxisLine(
                                  color: Colors
                                      .transparent), // Hide the x-axis line
                              majorGridLines:
                                  MajorGridLines(color: Colors.transparent),
                              isVisible: false,
                            ),
                            primaryYAxis: NumericAxis(
                              axisLine: const AxisLine(
                                  color: Colors.transparent, width: 0),
                              majorTickLines: const MajorTickLines(size: 0),
                              isVisible: false,
                              minimum: minm,
                              maximum: maxm,
                              labelStyle:
                                  const TextStyle(color: Colors.transparent),
                              majorGridLines: const MajorGridLines(
                                  color: Colors.transparent),
                            ),

                            // Add annotations for highest and lowest points
                            annotations: <CartesianChartAnnotation>[
                                // Annotation for the highest point
                                CartesianChartAnnotation(
                                  widget: Container(
                                    margin: const EdgeInsets.only(
                                        bottom: 20, right: 40),
                                    child: Text(
                                      '\$${formatter.format(highest.sales)}',
                                      style: const TextStyle(
                                          color: Colors.white60,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  coordinateUnit: CoordinateUnit.point,
                                  x: highest.year,
                                  y: highest.sales,
                                ),
                                // Annotation for the lowest point
                                CartesianChartAnnotation(
                                  widget: Container(
                                    margin: const EdgeInsets.only(
                                        top: 20, left: 40),
                                    child: Text(
                                      '\$${formatter.format(lowest.sales)}',
                                      style: const TextStyle(
                                          color: Colors.white60,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  coordinateUnit: CoordinateUnit.point,
                                  x: lowest.year,
                                  y: lowest.sales,
                                ),
                              ],
                            series: <CartesianSeries<_SalesData, String>>[
                                LineSeries<_SalesData, String>(
                                    color: const Color(0xff00ad7d),
                                    dataSource: data,
                                    xValueMapper: (_SalesData sales, _) =>
                                        sales.year,
                                    yValueMapper: (_SalesData sales, _) =>
                                        sales.sales,
                                    name: 'Sales',
                                    // Enable data label
                                    dataLabelSettings: const DataLabelSettings(
                                        isVisible: false))
                              ])),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      ElevatedButton(
                          onPressed: () {
                            handleButtonTap(1);
                          },
                          style: ElevatedButton.styleFrom(
                            alignment: Alignment.bottomLeft,
                            padding: EdgeInsets.only(left: 3, bottom: 5),
                            backgroundColor: Colors
                                .transparent, // Set the background color to transparent
                            shadowColor: Colors
                                .transparent, // Remove the shadow if needed
                          ),
                          child: Text(
                            '1H',
                            style: TextStyle(
                                color: selectedButton != 1
                                    ? Colors.white38
                                    : Colors.white),
                          )),
                      ElevatedButton(
                          onPressed: () {
                            handleButtonTap(2);
                          },
                          style: ElevatedButton.styleFrom(
                            alignment: Alignment.bottomLeft,
                            padding: EdgeInsets.only(left: 3, bottom: 5),
                            backgroundColor: Colors
                                .transparent, // Set the background color to transparent
                            shadowColor: Colors
                                .transparent, // Remove the shadow if needed
                          ),
                          child: Text(
                            '1D',
                            style: TextStyle(
                                color: selectedButton != 2
                                    ? Colors.white38
                                    : Colors.white),
                          )),
                      ElevatedButton(
                          onPressed: () {
                            handleButtonTap(3);
                          },
                          style: ElevatedButton.styleFrom(
                            alignment: Alignment.bottomLeft,
                            padding: EdgeInsets.only(left: 3, bottom: 5),
                            backgroundColor: Colors
                                .transparent, // Set the background color to transparent
                            shadowColor: Colors
                                .transparent, // Remove the shadow if needed
                          ),
                          child: Text(
                            '1W',
                            style: TextStyle(
                                color: selectedButton != 3
                                    ? Colors.white38
                                    : Colors.white),
                          )),
                      ElevatedButton(
                          onPressed: () {
                            handleButtonTap(4);
                          },
                          style: ElevatedButton.styleFrom(
                            alignment: Alignment.bottomLeft,
                            padding: EdgeInsets.only(left: 3, bottom: 5),
                            backgroundColor: Colors
                                .transparent, // Set the background color to transparent
                            shadowColor: Colors
                                .transparent, // Remove the shadow if needed
                          ),
                          child: Text(
                            '1M',
                            style: TextStyle(
                                color: selectedButton != 4
                                    ? Colors.white38
                                    : Colors.white),
                          )),
                      ElevatedButton(
                          onPressed: () {
                            handleButtonTap(5);
                          },
                          style: ElevatedButton.styleFrom(
                            alignment: Alignment.bottomLeft,
                            padding: EdgeInsets.only(left: 3, bottom: 5),
                            backgroundColor: Colors
                                .transparent, // Set the background color to transparent
                            shadowColor: Colors
                                .transparent, // Remove the shadow if needed
                          ),
                          child: Text(
                            '1Y',
                            style: TextStyle(
                                color: selectedButton != 5
                                    ? Colors.white38
                                    : Colors.white),
                          )),
                    ]),
                const Padding(
                  padding: EdgeInsets.only(top: 14),
                  child: Text(
                    'About Dogecoin',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.white),
                  ),
                ),
                ListTile(
                  contentPadding: EdgeInsets.only(left: 0, right: 24),
                  title: Text(
                    'Rank',
                    style: TextStyle(color: Colors.white38),
                  ),
                  trailing: Text(
                    'NO: 1',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
                ListTile(
                  contentPadding: EdgeInsets.only(left: 0, right: 24),
                  title: Text('Market Cap',
                      style: TextStyle(color: Colors.white38)),
                  trailing: Text('NO: 1',
                      style: TextStyle(color: Colors.white, fontSize: 15)),
                ),
                ListTile(
                  contentPadding: EdgeInsets.only(left: 0, right: 24),
                  title: Text('Market Dominance',
                      style: TextStyle(color: Colors.white38)),
                  trailing: Text('NO: 1',
                      style: TextStyle(color: Colors.white, fontSize: 15)),
                ),
                ListTile(
                  contentPadding: EdgeInsets.only(left: 0, right: 24),
                  title: Text('Circulation Supply',
                      style: TextStyle(color: Colors.white38)),
                  trailing: Text('NO: 1',
                      style: TextStyle(color: Colors.white, fontSize: 15)),
                ),
                ListTile(
                  contentPadding: EdgeInsets.only(left: 0, right: 24),
                  title: Text('Max Supply',
                      style: TextStyle(color: Colors.white38)),
                  trailing: Text('NO: 1',
                      style: TextStyle(color: Colors.white, fontSize: 15)),
                ),
                ListTile(
                  contentPadding: EdgeInsets.only(left: 0, right: 24),
                  title: Text('Total Supply',
                      style: TextStyle(color: Colors.white38)),
                  trailing: Text('NO: 1',
                      style: TextStyle(color: Colors.white, fontSize: 15)),
                ),
                ListTile(
                  contentPadding: EdgeInsets.only(left: 0, right: 24),
                  title: Text('Issue Date',
                      style: TextStyle(color: Colors.white38)),
                  trailing: Text('NO: 1',
                      style: TextStyle(color: Colors.white, fontSize: 15)),
                ),
                ListTile(
                  contentPadding: EdgeInsets.only(left: 0, right: 24),
                  title: Text('All Time High',
                      style: TextStyle(color: Colors.white38)),
                  trailing: Text('NO: 1',
                      style: TextStyle(color: Colors.white, fontSize: 15)),
                ),
                ListTile(
                  contentPadding: EdgeInsets.only(left: 0, right: 24),
                  title: Text('All Time Low',
                      style: TextStyle(color: Colors.white38)),
                  trailing: Text('NO: 1',
                      style: TextStyle(color: Colors.white, fontSize: 15)),
                ),
              ],
            )),
      ),
    );
  }
}

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
