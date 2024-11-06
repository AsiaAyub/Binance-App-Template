class Coin {
  late dynamic id;
  late dynamic symbol;
  late dynamic name;
  late dynamic image;
  late dynamic currentPrice;
  late dynamic marketCap;
  late dynamic marketCapRank;
  late dynamic dailyChange;
  late dynamic marketCapChange_Percentage24h;
  late dynamic circulatingSupply;
  dynamic? maxSupply;
  late dynamic totalSupply;
  DateTime? issueDate;
  late dynamic allTimeHigh;
  late dynamic allTimeLow;
  late dynamic athDate;
  late dynamic atlDate;
  late dynamic totalVolume;
  dynamic? description;



  Coin(
      {required this.id,
      required this.name,
      required this.symbol,
      required this.image,
      required this.currentPrice,
      required this.marketCapChange_Percentage24h,
      required this.marketCap,
      required this.allTimeHigh,
      required this.allTimeLow,
      required this.athDate,
      required this.atlDate,
      required this.circulatingSupply,
      required this.dailyChange,
      this.issueDate,
      required this.marketCapRank,
       this.maxSupply,
        required this.totalVolume,
      required this.totalSupply,
        this.description,
      });

  @override
  String toString(){
      return '{$symbol $name $currentPrice $marketCap $marketCapRank $dailyChange $marketCapChange_Percentage24h}';
  }


  Coin.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    symbol = json['symbol'];
    image = json['image'];
    currentPrice = currentPrice = json['current_price'];
    marketCapChange_Percentage24h = json['price_change_percentage_24h'];
    marketCap = json['market_cap'];
    allTimeLow = json['atl'];
    allTimeHigh = json['ath'];
    athDate = json['ath_date'];
    atlDate = json['atl_date'];
    circulatingSupply = json['circulating_supply'];
    dailyChange = json['price_change_24h'];
    issueDate = json['issue_date'];
    marketCapRank = json['market_cap_rank'];
    maxSupply = json['max_supply'];
    totalSupply = json['total_supply'];
    totalVolume = json['total_volume'];

  }
}


