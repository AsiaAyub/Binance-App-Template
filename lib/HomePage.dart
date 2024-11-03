import 'dart:convert';
import 'package:bitcion_app/Api/NetworkCalls.dart';
import 'package:bitcion_app/Models/Coin.dart';
import 'package:bitcion_app/Widgets/MostTraded.dart';
import 'package:flutter/cupertino.dart';
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
  void onMenuTapped(int index){
    setState(() {
      selectedMenuItem = index;
    });
  }
  void showList(int index){
    setState(() {
      selectedButton = index;
    });

  }

  void fetchMostTradedData() async {
    dynamic resp = await NetworkCalls().fetchCoins();
    if(resp.statusCode == 200){

      List<dynamic> jsonData = jsonDecode(resp.body);
      List<Coin> coinsList = [];
      coinsList = jsonData.map<Coin>((json) {
        Coin coin = Coin.fromJson(json);
        return coin;
      }).toList();



      setState(() {
        coins = coinsList;
      });
    }
    else{
      print('no data fetched');
    }

  }

  List<Coin> coins = [];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: const Color(0xFF1f2630),
        leading: Transform.scale(scale: 0.5,
          child: Image.asset(
            "assets/icons/Binance Icon.png",
          height: 10,
          width: 10,
          )
        ),

        actions: const [
    Padding(
    padding: EdgeInsets.all(10),
    child: Icon(Icons.search)),
    Padding(
    padding: EdgeInsets.all(10),
    child: Icon(Icons.qr_code_scanner_sharp)),
    Padding(
    padding: EdgeInsets.all(10),
    child: Icon(Icons.edit_location_alt))
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
           style: TextStyle(
               fontSize: 17,
               fontWeight: FontWeight.bold
           ),
         ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
           mainAxisAlignment: MainAxisAlignment.start,
           children: [
             ElevatedButton(
                 onPressed: (){showList(1);},
          style: ButtonStyle(
              elevation: const WidgetStatePropertyAll(0),
            padding:WidgetStateProperty.all<EdgeInsets>(
              const EdgeInsets.symmetric(horizontal: 13),
            ),
            backgroundColor: WidgetStateProperty.all<Color>(
                selectedButton != 1? const Color(0xFF1f2630) : Colors.white10
            )
          ),
                 child:Text('Most traded',
                   style: TextStyle(
                     fontSize: 9,
                     color: selectedButton != 1? Colors.white60 : Colors.white
                   ),)),
             const SizedBox(width: 7,),
             ElevatedButton(
                 onPressed: (){showList(2);},
                 style: ButtonStyle(
                     elevation: const WidgetStatePropertyAll(0),
                   padding:WidgetStateProperty.all<EdgeInsets>(
                     const EdgeInsets.symmetric(horizontal: 13),
                   ),
                     backgroundColor: WidgetStateProperty.all<Color>(
                         selectedButton != 2? const Color(0xFF1f2630) : Colors.white10
                     )
                 ),
                 child: Text(
                     'Market Cap',
                     style: TextStyle(
                       fontSize: 9,
                         color: selectedButton != 2? Colors.white60 : Colors.white
                     )
                 )
             ),
             const SizedBox(width: 7,),
             ElevatedButton(
                 onPressed: (){showList(3);},
                 style: ButtonStyle(
                     elevation: const WidgetStatePropertyAll(0),
                   padding:WidgetStateProperty.all<EdgeInsets>(
                     const EdgeInsets.symmetric(horizontal: 13),
                   ),
                     backgroundColor: WidgetStateProperty.all<Color>(
                         selectedButton != 3? const Color(0xFF1f2630) : Colors.white10
                     )
                 ),
                 child: Row(
                   children: [
                 Text(
                     'Price',
                     style: TextStyle(
                       fontSize: 9,
                         color: selectedButton != 3? Colors.white60 : Colors.white
                     )
                 ),
                   Icon(Icons.swap_vert_outlined, size: 15, color: selectedButton != 3? Colors.white60 : Colors.white,)])
             ),
             const SizedBox(width: 7,),
             ElevatedButton(
                 onPressed: (){showList(4);},
                 style: ButtonStyle(
                   elevation: const WidgetStatePropertyAll(0),
                   padding:WidgetStateProperty.all<EdgeInsets>(
                     const EdgeInsets.symmetric(horizontal: 13),
                   ),
                     backgroundColor: WidgetStateProperty.all<Color>(
                         selectedButton != 4? const Color(0xFF1f2630): Colors.white10
                     )
                 ),
                 child: Row(
                     children: [
                       Text(
                           '24H change',
                           style: TextStyle(
                               fontSize: 9,
                               color: selectedButton != 4? Colors.white60: Colors.white
                           )
                       ),
                       Icon(Icons.swap_vert_outlined, size: 15, color: selectedButton != 4? Colors.white60: Colors.white)])
             )
           ],
         ),
         if(selectedButton == 1)
            MostTraded(coinsList: coins,)

     ] ))),

      bottomNavigationBar: Container(
        decoration: const BoxDecoration(border: Border(top: BorderSide(width: 1, color: Colors.white10))),
      child:BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color(0xFF1f2630),
          iconSize: 16,
          selectedItemColor: Colors.white,
          currentIndex: selectedMenuItem,
          onTap: onMenuTapped,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.bar_chart),label: 'Market', ),
            BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.upRightAndDownLeftFromCenter), label: 'Trade'),
            BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.diamond), label: 'Discover'),
            BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Portfolio'),

          ])),

    );
  }
}
