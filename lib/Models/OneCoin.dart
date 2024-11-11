import 'package:isar/isar.dart';


@collection
class OneCoin{
  Id iD = Isar.autoIncrement;
  late String id;
  late String symbol;
  late String name;
  late double marketCap;
  int? marketCapRank;
  late double circulatingSupply;
  double? maxSupply;
  late double totalSupply;
  late String issueDate;//
  late double allTimeHigh;
  late double allTimeLow;
  late String athDate;
  late String atlDate;
  String? description;//
  String? homepage;//
  String? whitepaper;//
  String? blockchainExplorer;//

  OneCoin(
  {required this.id,
  required this.name,
  required this.symbol,
  required this.marketCap,
  required this.allTimeHigh,
  required this.allTimeLow,
  required this.athDate,
  required this.atlDate,
  required this.circulatingSupply,
  required this.issueDate,
   this.marketCapRank,
  this.maxSupply,
  required this.totalSupply,
  this.description,
  this.homepage,
  this.whitepaper ,
  this.blockchainExplorer,
  });

  @override
  String toString(){
  return '$symbol $name $homepage $blockchainExplorer $whitepaper'
      ' $marketCap $marketCapRank '
      ' $totalSupply $maxSupply $totalSupply $issueDate';
  }


  OneCoin.fromJson(Map<String, dynamic> json) {
  id = json['id'];
  name = json['name'];
  symbol = json['symbol'];
  marketCap = json['market_data']?['market_cap']?['usd'] == null? 0.0 : (json['market_data']?['market_cap']?['usd'] as num).toDouble();
  allTimeLow = json['market_data']?['atl']?['usd'] == null? 0.0 : (json['market_data']?['atl']?['usd'] as num).toDouble();
  allTimeHigh = json['market_data']?['ath']?['usd']== null? 0.0 : (json['market_data']?['ath']?['usd'] as num).toDouble();
  athDate = json['market_data']?['ath_date']?['usd'] ?? '';
  atlDate = json['market_data']?['atl_date']?['usd']?? '';
  circulatingSupply = json['market_data']?['circulating_supply']== null? 0.0 : (json['market_data']?['circulating_supply'] as num).toDouble() ;
  issueDate = json['genesis_date']?? '-----';
  marketCapRank = json['market_cap_rank']?? 0;
  maxSupply = json['market_data']?['max_supply']== null ? 0.0 : (json['market_data']?['max_supply'] as num).toDouble();
  totalSupply = json['market_data']?['total_supply'] == null? 0.0 : (json['market_data']?['total_supply'] as num).toDouble();
  description = json['description']?['en']?? '';
  homepage = json['links']?['homepage']?[0] ?? '';
  whitepaper = json['links']?['whitepaper'] ?? '';
  blockchainExplorer = json['links']?['whitepaper'] ?? '';

  }
  }



