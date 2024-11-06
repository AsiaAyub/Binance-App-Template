class OneCoin{

  late dynamic id;
  late dynamic symbol;
  late dynamic name;
  late dynamic currentPrice;
  late dynamic marketCap;
  dynamic marketCapRank;
  late dynamic dailyChange;
  late dynamic marketCapChange_Percentage24h;
  late dynamic circulatingSupply;
  dynamic? maxSupply;
  late dynamic totalSupply;
  late dynamic issueDate;
  late dynamic allTimeHigh;
  late dynamic allTimeLow;
  late dynamic athDate;
  late dynamic atlDate;
  late dynamic totalVolume;
  dynamic? description;
  String? homepage;
  String? whitepaper;
  String? blockchainExplorer;


  OneCoin(
  {required this.id,
  required this.name,
  required this.symbol,
  required this.currentPrice,
  required this.marketCapChange_Percentage24h,
  required this.marketCap,
  required this.allTimeHigh,
  required this.allTimeLow,
  required this.athDate,
  required this.atlDate,
  required this.circulatingSupply,
  required this.dailyChange,
  required this.issueDate,
   this.marketCapRank,
  this.maxSupply,
  required this.totalVolume,
  required this.totalSupply,
  this.description,
  this.homepage,
  this.whitepaper ,
  this.blockchainExplorer,
  });

  @override
  String toString(){
  return '$symbol $name $currentPrice $homepage $blockchainExplorer $whitepaper'
      ' $marketCap $marketCapRank $dailyChange $marketCapChange_Percentage24h'
      ' $totalSupply $maxSupply $totalSupply $issueDate';
  }


  OneCoin.fromJson(Map<String, dynamic> json) {
  id = json['id'];
  name = json['name'];
  symbol = json['symbol'];
  currentPrice = json['market_data']?['current_price']?['usd'];
  marketCapChange_Percentage24h = json['market_data']?['price_change_percentage_24h'];
  marketCap = json['market_data']?['market_cap']?['usd'];
  allTimeLow = json['market_data']?['atl']?['usd'];
  allTimeHigh = json['market_data']?['ath']?['usd'];
  athDate = json['market_data']?['ath_date'];
  atlDate = json['market_data']?['atl_date'];
  circulatingSupply = json['market_data']?['circulating_supply'];
  dailyChange = json['market_data']?['price_change_24h'];
  issueDate = json['genesis_date']?? '-----';
  marketCapRank = json['market_cap_rank'];
  maxSupply = json['market_data']?['max_supply'];
  totalSupply = json['market_data']?['total_supply'];
  totalVolume = json['market_data']?['total_volume']?['usd'];
  description = json['description']?['en'];
  homepage = json['links']?['homepage']?[0] ?? '';
  whitepaper = json['links']?['whitepaper'] ?? '';
  blockchainExplorer = json['links']?['whitepaper'] ?? '';

  }
  }



