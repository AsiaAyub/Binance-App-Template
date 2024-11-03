import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MostTraded extends StatefulWidget {
  const MostTraded({super.key, required this.coinsList});

  final List<dynamic> coinsList;

  @override
  State<MostTraded> createState() => _MostTradedState();
}

class _MostTradedState extends State<MostTraded> {
  final formatter = NumberFormat("#,###,##0.0#");
  @override
  Widget build(BuildContext context) {
    return Column(
      children: widget.coinsList.map((coin){
        return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 30,
                  height: 30,

                  margin: const EdgeInsets.fromLTRB(5, 14, 14, 0),
                  child: Image.network('${coin.image}', fit: BoxFit.cover,),
                ),
                Expanded(
                child: ListTile(
                  dense: true,
                  contentPadding: const EdgeInsets.all(0),
                  title: Text('${coin.name}', style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                  subtitle: Text('${coin.symbol}', style: const TextStyle(color: Colors.white60, fontSize: 12),), // Optional subtitle
                  // Optional leading icon
                  trailing:  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text( '${formatter.format(coin.marketCapChange_Percentage24h)}%', style: TextStyle(fontSize: 14, color: coin.marketCapChange_Percentage24h < 0? Colors.red : Colors.green),),
                      Text('\$${formatter.format(coin.currentPrice)}', style: const TextStyle(fontSize: 12),),
                    ],
                  ),
                  onTap: () {
                    print('Tapped ListTile ${coin.name}');
                  },
                ))
              ]
          );
    }
    ).toList(),);
  }
}
