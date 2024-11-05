import 'package:http/http.dart' as http;
class NetworkCalls{

  Future <dynamic> fetchCoins() async{
    try{
      http.Response response = await http.get(Uri.parse('https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=volume_desc'));
      return response;

    } catch(e){
          return 'Error Occurred: $e';
    }
  }

  Future <dynamic> fetchCoinsById() async{
    try{
      http.Response response = await http.get(Uri.parse('https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=volume_desc'));
      return response;

    } catch(e){
      return 'Error Occurred: $e';
    }
  }
}