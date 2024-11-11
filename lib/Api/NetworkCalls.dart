import 'dart:convert';

import 'package:http/http.dart' as http;
class NetworkCalls{

  Future <dynamic> fetchCoins() async{
    try{
      http.Response response = await http.get(
          Uri.parse('https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=volume_desc'));
      if (response.statusCode == 200) {
        List<dynamic> jsonData = jsonDecode(response.body);
        return jsonData;
      }
      else{
        return false;
      }
    } catch(e){
          return 'Error Occurred: $e';
    }
  }

  Future <dynamic> fetchCoinsById(String id) async{
    try{
      http.Response response = await http.get(Uri.parse('https://api.coingecko.com/api/v3/coins/$id'));
      if (response.statusCode == 200) {
        dynamic jsonData = jsonDecode(response.body);
        return jsonData;
      }
      else{
        return false;
      }

    } catch(e){
      return 'Error Occurred: $e';
    }
  }

  Future<double> getBitcoinDominance() async {
    try {
      final globalResponse = await http.get(Uri.parse('https://api.coingecko.com/api/v3/global'));

      if (globalResponse.statusCode == 200) {
        final globalData = jsonDecode(globalResponse.body);

        double? totalMarketCap = globalData['data']?['total_market_cap']?['usd']?.toDouble();

        if (totalMarketCap != null) {
          return totalMarketCap;
        } else {
          print('Warning: total_market_cap[usd] is null');
          return 1.0;
        }
      } else {
        print('Error: Failed to fetch data. Status code: ${globalResponse.statusCode}');
        return 1.0;
      }
    } catch (e) {
      print('Exception occurred: $e');
      return 1.0;
    }
  }

}