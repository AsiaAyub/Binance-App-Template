import 'package:isar/isar.dart';

part 'Coin.g.dart';

@collection
class Coin {
  Id iD = Isar.autoIncrement;
  String id = '';
  String symbol = '';
  String name = '';
  String image = '';
  double currentPrice = 0.0;
  double marketCapChange_Percentage24h = 0.0;
  double dailyChange = 0.0;
  double marketCap = 0.0;
  int? marketCapRank = 0;
  double circulatingSupply = 0.0;
  double? maxSupply = 0.0;
  double totalSupply = 0.0;
  String issueDate = '2009-01-03';
  double allTimeHigh = 0.0;
  double allTimeLow = 0.0;
  String athDate = '';
  String atlDate = '';
  String description =
      '''Cryptocurrencies are a revolutionary form of internet-based money 
  that use peer-to-peer technology, eliminating the need for a central authority like a 
  bank or government. Developed with decentralized blockchain technology, they offer secure, 
  verifiable, and immutable transactions that allow users to send and receive digital assets 
  worldwide, at any time, and with minimal transaction fees.
      
The foundation of cryptocurrencies lies in their open-source nature, meaning that anyone can 
access, review, and contribute to the code. This transparency fuels ongoing development, with 
each currency designed to solve unique challenges and improve the financial system. For example, 
some cryptocurrencies focus on faster transaction times, while others prioritize privacy or scalability.
      
Many cryptocurrencies are designed to have a capped supply, creating scarcity and making them a 
potential hedge against inflation. Most notable among them is Bitcoin, with a cap of 21 million coins, 
but numerous others have followed suit. These include well-known digital assets such as Litecoin, 
Peercoin, and Ethereum, each bringing its own innovations and expanding the scope of blockchain 
applications.''';

  String homepage = 'https://www.coindesk.com/learn';
  String whitepaper =
      'https://academy.binance.com/en/articles/what-is-a-whitepaper-in-crypto';
  String blockchainExplorer = 'https://etherscan.io/';

// Default constructor
  Coin();

  // Constructor with parameters
  Coin.withParameters({
    required this.id,
    required this.name,
    required this.symbol,
    required this.image,
    required this.currentPrice,
    required this.marketCapChange_Percentage24h,
    required this.dailyChange,
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
    required this.description,
    required this.homepage,
    required this.whitepaper,
    required this.blockchainExplorer,
  });

  @override
  String toString() {
    return '{$symbol $name $currentPrice $marketCapChange_Percentage24h}';
  }

  Coin.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    symbol = json['symbol'];
    image = json['image'];
    currentPrice = json['current_price'] != null
        ? (json['current_price'] as num).toDouble()
        : 0.0;
    marketCapChange_Percentage24h = json['price_change_percentage_24h'] ?? 0;
    dailyChange = json['price_change_24h'] == null
        ? 0.0
        : (json['price_change_24h'] as num).toDouble();
    marketCap = json['market_cap'] == null
        ? 0.0
        : (json['market_cap'] as num).toDouble();
    allTimeLow = json['atl'] == null ? 0.0 : (json['atl'] as num).toDouble();
    allTimeHigh = json['ath'] == null ? 0.0 : (json['ath'] as num).toDouble();
    athDate = json['ath_date'] ?? '';
    atlDate = json['atl_date'] ?? '';
    circulatingSupply = json['circulating_supply'] == null
        ? 0.0
        : (json['circulating_supply'] as num).toDouble();
    marketCapRank = json['market_cap_rank'] ?? 0;
    maxSupply = json['max_supply'] == null
        ? 0.0
        : (json['max_supply'] as num).toDouble();
    totalSupply = json['total_supply'] == null
        ? 0.0
        : (json['total_supply'] as num).toDouble();
  }
}
