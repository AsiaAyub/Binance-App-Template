import 'package:bitcion_app/Api/NetworkCalls.dart';
import 'package:bitcion_app/Models/Coin.dart';
import 'package:bitcion_app/Widgets/CoinsList.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:isar/isar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.isar});
  final Isar isar;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
      @override
      void initState() {
        super.initState();
        fetchCoinData();
      }

      int selectedButton = 1;
      int selectedMenuItem = 0;
      bool isDescChange = true;
      bool isDescPrice = true;
      List<Coin> coins = [];
      List<Coin> coinsSortedWithMarketCap = [];
      List<Coin> coinsSortedWithPrice = [];
      List<Coin> coinsSortedWith24HChange = [];
      List<String> coinIds = [];



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
            isDescPrice = !isDescPrice;
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
          isDescChange = !isDescChange;
          }
        });
      }

      void fetchCoinData() async {
        final coinCount = await widget.isar.coins.count();

        if (coinCount == 0) {
          dynamic resp = await NetworkCalls().fetchCoins();
          if (resp != false) {
            List<Coin> coinsList = [];
            coinsList = resp.map<Coin>((json) {
              Coin coin = Coin.fromJson(json);
              return coin;
            }).toList();

            // Write to Isar database and wait for completion
            await widget.isar.writeTxn(() async {
              await widget.isar.coins.putAll(coinsList); // Save all coins to Isar
            });

            // // After writing is complete, fetch all IDs
            //  coinIds = await getAllCoinIds();
            // print('Fetched Coin IDs: $coinIds');

            // Fetch the coins from Isar
            final listOfCoins = await widget.isar.coins.where().findAll(); // Reads all coins from Isar

            setState(() {
              coins = listOfCoins;
              coinsSortedWithMarketCap = List.from(coins)..sort((a, b) => b.marketCap.compareTo(a.marketCap));
              coinsSortedWithPrice = List.from(coins)..sort((a, b) => b.currentPrice.compareTo(a.currentPrice));
              coinsSortedWith24HChange = List.from(coins)..sort((a, b) => b.dailyChange.compareTo(a.dailyChange));
            });


          } else {
            print('No data fetched or an error occurred while fetching');
          }
        } else {
          print('Coins already in database');

          // After writing is complete, fetch all IDs
          // coinIds = await getAllCoinIds();
          // print('Fetched Coin IDs: $coinIds');

          // Fetch the coins from Isar
          final listOfCoins = await widget.isar.coins.where().findAll(); // Reads all coins from Isar

          setState(() {
            coins = listOfCoins;
            coinsSortedWithMarketCap = List.from(coins)..sort((a, b) => b.marketCap.compareTo(a.marketCap));
            coinsSortedWithPrice = List.from(coins)..sort((a, b) => b.currentPrice.compareTo(a.currentPrice));
            coinsSortedWith24HChange = List.from(coins)..sort((a, b) => b.dailyChange.compareTo(a.dailyChange));
          });
          // fetchMultipleCoins(coinIds);
        }
      }

      // Future<List<String>> getAllCoinIds() async {
      //   // Fetch all coins from the Isar database
      //   final coins = await widget.isar.coins.where().findAll();
      //
      //   // Map the results to extract only the 'id' as a List<String>
      //   return coins.map<String>((coin) => coin.id).toList();
      // }

      // Future<void> fetchMultipleCoins(List<String> coinIds) async {
      //   print('');
      //   print('I am here');
      //   print('');
      //
      //   if(coinIds.isNotEmpty){
      //   for (String id in coinIds) {
      //     // Add a delay to avoid hitting the rate limit
      //     await Future.delayed(Duration(seconds: 10));  // Delay of 1 second
      //
      //     var result = await NetworkCalls().fetchCoinsById(id);
      //
      //     if (result != false) {
      //       // Map the result to your OneCoin model (Assuming you have a OneCoin.fromJson factory)
      //       OneCoin oneCoin = OneCoin.fromJson(result);
      //
      //       // Save the OneCoin data to Isar
      //       await widget.isar.writeTxn(() async {
      //         await widget.isar.oneCoins.put(oneCoin);  // Use put to insert or update the OneCoin data
      //       });
      //
      //       print('Saved OneCoin with ID: $id');
      //     } else {
      //       print('Failed to fetch data for coin ID: $id');
      //     }
      //
      //     // Add a delay to avoid hitting the rate limit
      //     await Future.delayed(Duration(seconds: 3));  // Delay of 1 second
      //   }
      // }
      // else{
      //   print('the coinsid list is empty');
      // }
      // }



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
            )
        ),
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
                              handlePrice();
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
                              handleDailyChange();
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
                                              color: isDescChange && selectedButton == 4
                                                  ? Colors.white
                                                  : Colors.white60
                                          ), // Up arrow
                                          Positioned(
                                            top: 5, // Adjust position as needed
                                            child: Icon(
                                                Icons.arrow_drop_down_sharp,
                                                size: 17,
                                                color: !isDescChange && selectedButton == 4
                                                    ? Colors.white
                                                    : Colors.white60), // Down arrow
                                          ),
                                        ],
                                      )),
                                ] //
                            )
                        )
                      ],
                    ),

                    //start of the list view
                    if (selectedButton == 1)
                      CoinsList(
                        coinsList: coins, isar: widget.isar,
                      )

                    else if (selectedButton == 2)
                      CoinsList(
                        coinsList: coinsSortedWithMarketCap, isar: widget.isar,
                      )

                    else if (selectedButton == 3)
                        CoinsList(
                        coinsList: coinsSortedWithPrice,  isar: widget.isar,
                      )

                    else if (selectedButton == 4)
                          CoinsList(
                        coinsList: coinsSortedWith24HChange,  isar: widget.isar,
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
