import 'dart:convert';
import 'package:bitcion_app/Api/NetworkCalls.dart';
import 'package:bitcion_app/Models/Coin.dart';
import 'package:bitcion_app/Widgets/CoinsList.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
      @override
      void initState() {
        super.initState();
        fetchMostTradedData();
      }

      int selectedButton = 1;
      int selectedMenuItem = 0;
      bool isDescChange = true;
      bool isDescPrice = true;
      List<Coin> coins = [];
      List<Coin> coinsSortedWithMarketCap = [];
      List<Coin> coinsSortedWithPrice = [];
      List<Coin> coinsSortedWith24HChange = [];


      void onMenuTapped(int index) {
        setState(() {
          selectedMenuItem = index;
        });
      }


      void showList(int index) {
        setState(() {
          selectedButton = index;
        });
      }

      void handlePrice(){
        setState(() {
          if(selectedButton == 3){
            if (isDescPrice) {
              coinsSortedWithPrice.sort((a, b) => b.currentPrice.compareTo(a.currentPrice));
            } else {
              coinsSortedWithPrice.sort((a, b) => a.currentPrice.compareTo(b.currentPrice));
            }
            isDescPrice = !isDescPrice; // Toggle the sort order
          }
        });
      }

      void handleDailyChange(){
        setState(() {
          if(selectedButton == 4){
          if (isDescChange) {
          coinsSortedWith24HChange.sort((a, b) => b.dailyChange.compareTo(a.dailyChange));
          } else {
          coinsSortedWith24HChange.sort((a, b) => a.dailyChange.compareTo(b.dailyChange));
          }
          isDescChange = !isDescChange; // Toggle the sort order
          }
        });
      }

      void fetchMostTradedData() async {
        dynamic resp = await NetworkCalls().fetchCoins();
        if (resp.statusCode == 200) {
          List<dynamic> jsonData = jsonDecode(resp.body);
          List<Coin> coinsList = [];
          coinsList = jsonData.map<Coin>((json) {
            Coin coin = Coin.fromJson(json);
            return coin;
          }).toList();

          setState(() {

            coins = coinsList;
            coinsSortedWithMarketCap = List.from(coinsList)..sort((a, b) => b.marketCap.compareTo(a.marketCap));
            coinsSortedWithPrice = List.from(coinsList)..sort((a, b) => b.currentPrice.compareTo(a.currentPrice));
            coinsSortedWith24HChange = List.from(coinsList)..sort((a, b) => b.dailyChange.compareTo(a.dailyChange));

          });
        } else {
          print('no data fetched');
        }
      }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: Colors.transparent,
        leading: Transform.scale(
            scale: 0.5,
            child: Image.asset(
              "assets/icons/Binance Icon.png",
              height: 10,
              width: 10,
            )),
        actions: const [
          Padding(padding: EdgeInsets.all(10), child: Icon(Icons.search)),
          Padding(
              padding: EdgeInsets.all(10),
              child: Icon(Icons.qr_code_scanner_sharp)),
          Padding(
              padding: EdgeInsets.all(10), child: Icon(Icons.edit_location_alt))
        ],
      ),
      body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      'Coin',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              showList(1);
                            },
                            style: ButtonStyle(
                                elevation: const WidgetStatePropertyAll(0),
                                padding: WidgetStateProperty.all<EdgeInsets>(
                                  const EdgeInsets.symmetric(horizontal: 13),
                                ),
                                backgroundColor: WidgetStateProperty.all<Color>(
                                    selectedButton != 1
                                        ? const Color(0xFF1f2630)
                                        : Colors.white10)),
                            child: Text(
                              'Most traded',
                              style: TextStyle(
                                  fontSize: 9,
                                  color: selectedButton != 1
                                      ? Colors.white60
                                      : Colors.white),
                            )),
                        const SizedBox(
                          width: 7,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              showList(2);
                            },
                            style: ButtonStyle(
                                elevation: const WidgetStatePropertyAll(0),
                                padding: WidgetStateProperty.all<EdgeInsets>(
                                  const EdgeInsets.symmetric(horizontal: 13),
                                ),
                                backgroundColor: WidgetStateProperty.all<Color>(
                                    selectedButton != 2
                                        ? const Color(0xFF1f2630)
                                        : Colors.white10)),
                            child: Text('Market Cap',
                                style: TextStyle(
                                    fontSize: 9,
                                    color: selectedButton != 2
                                        ? Colors.white60
                                        : Colors.white))),
                        const SizedBox(
                          width: 7,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              showList(3);
                            },
                            style: ButtonStyle(
                                elevation: const WidgetStatePropertyAll(0),
                                padding: WidgetStateProperty.all<EdgeInsets>(
                                  const EdgeInsets.symmetric(horizontal: 13),
                                ),
                                backgroundColor: WidgetStateProperty.all<Color>(
                                    selectedButton != 3
                                        ? const Color(0xFF1f2630)
                                        : Colors.white10)),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Baseline(
                                      baseline:
                                          10.0, // Adjust to align with text baseline
                                      baselineType: TextBaseline.alphabetic,
                                      child: Text('Price',
                                          style: TextStyle(
                                              fontSize: 9,
                                              color: selectedButton != 3
                                                  ? Colors.white60
                                                  : Colors.white))),
                                  Baseline(
                                      baseline:
                                          13.0, // Match the baseline of the text
                                      baselineType: TextBaseline.alphabetic,
                                      child: Stack(
                                        alignment: Alignment.topCenter,
                                        children: [
                                          Icon(Icons.arrow_drop_up_sharp,
                                              size: 17,
                                              color: isDescPrice && selectedButton == 3
                                                  ? Colors.white
                                                  : Colors.white60), // Up arrow
                                          Positioned(
                                            top: 5, // Adjust position as needed
                                            child: Icon(
                                                Icons.arrow_drop_down_sharp,
                                                size: 17,
                                                color: !isDescPrice && selectedButton == 3
                                                    ? Colors.white
                                                    : Colors.white60), // Down arrow
                                          ),
                                        ],
                                      )),
                                ])),
                        const SizedBox(
                          width: 7,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              showList(4);
                            },
                            style: ButtonStyle(
                                elevation: const WidgetStatePropertyAll(0),
                                padding: WidgetStateProperty.all<EdgeInsets>(
                                  const EdgeInsets.symmetric(horizontal: 13),
                                ),
                                backgroundColor: WidgetStateProperty.all<Color>(
                                    selectedButton != 4
                                        ? const Color(0xFF1f2630)
                                        : Colors.white10)),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Baseline(
                                      baseline:
                                          10.0, // Adjust to align with text baseline
                                      baselineType: TextBaseline.alphabetic,
                                      child: Text('24H change',
                                          style: TextStyle(
                                              fontSize: 9,
                                              color: selectedButton != 4
                                                  ? Colors.white60
                                                  : Colors.white))),
                                  Baseline(
                                      baseline:
                                          13.0, // Match the baseline of the text
                                      baselineType: TextBaseline.alphabetic,
                                      child: Stack(
                                        alignment: Alignment.topCenter,
                                        children: [
                                          Icon(Icons.arrow_drop_up_sharp,
                                              size: 17,
                                              color: !isDescChange && selectedButton == 4
                                                  ? Colors.white
                                                  : Colors.white60
                                          ), // Up arrow
                                          Positioned(
                                            top: 5, // Adjust position as needed
                                            child: Icon(
                                                Icons.arrow_drop_down_sharp,
                                                size: 17,
                                                color: isDescChange && selectedButton == 4
                                                    ? Colors.white
                                                    : Colors.white60), // Down arrow
                                          ),
                                        ],
                                      )),
                                ]))
                      ],
                    ),
                    if (selectedButton == 1)
                      CoinsList(
                        coinsList: coins,
                      )
                    else if (selectedButton == 2)
                      CoinsList(
                        coinsList: coinsSortedWithMarketCap,
                      )
                    else if (selectedButton == 3)
                        CoinsList(
                        coinsList: coinsSortedWithPrice,
                      )
                    else if (selectedButton == 4)
                          CoinsList(
                        coinsList: coinsSortedWith24HChange,
                      )
                  ]
              )
          )
      ),
      bottomNavigationBar: Container(
          decoration: const BoxDecoration(
              border: Border(top: BorderSide(width: 1, color: Colors.white10))),
          child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: const Color(0xFF1f2630),
              iconSize: 16,
              selectedItemColor: Colors.white,
              currentIndex: selectedMenuItem,
              onTap: onMenuTapped,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.bar_chart),
                  label: 'Market',
                ),
                BottomNavigationBarItem(
                    icon: Icon(FontAwesomeIcons.upRightAndDownLeftFromCenter),
                    label: 'Trade'),
                BottomNavigationBarItem(
                    icon: Icon(FontAwesomeIcons.diamond), label: 'Discover'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.book), label: 'Portfolio'),
              ])),
    );
  }
}
