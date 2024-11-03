import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Price extends StatefulWidget {
  const Price({super.key});

  @override
  State<Price> createState() => _PriceState();
}

class _PriceState extends State<Price> {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: List.generate(
          10, // Number of ListTiles
              (index) =>
              Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      margin: const EdgeInsets.fromLTRB(5, 18, 7, 0),
                      child: Image.asset('assets/icons/Binance Icon.png', fit: BoxFit.cover,),
                    ),
                    Expanded(child: ListTile(
                      contentPadding: const EdgeInsets.all(1),
                      title: Text('ListTile ${index + 1}'), // Title for each ListTile
                      subtitle: Text('Subtitle for ListTile ${index + 1}', style: const TextStyle(color: Colors.white60, fontSize: 12),), // Optional subtitle
                      // Optional leading icon
                      trailing: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('78%', style: TextStyle(fontSize: 14, color: Colors.red),),
                          Text('\$8,798', style: TextStyle(fontSize: 12),),
                        ],
                      ),
                      onTap: () {
                        print('Tapped ListTile ${index + 1}');
                      },
                    ))
                  ]
              ),
        )
    );
  }
}
