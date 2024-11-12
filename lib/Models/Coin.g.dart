// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Coin.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCoinCollection on Isar {
  IsarCollection<Coin> get coins => this.collection();
}

const CoinSchema = CollectionSchema(
  name: r'Coin',
  id: -4922709809844936540,
  properties: {
    r'allTimeHigh': PropertySchema(
      id: 0,
      name: r'allTimeHigh',
      type: IsarType.double,
    ),
    r'allTimeLow': PropertySchema(
      id: 1,
      name: r'allTimeLow',
      type: IsarType.double,
    ),
    r'athDate': PropertySchema(
      id: 2,
      name: r'athDate',
      type: IsarType.string,
    ),
    r'atlDate': PropertySchema(
      id: 3,
      name: r'atlDate',
      type: IsarType.string,
    ),
    r'blockchainExplorer': PropertySchema(
      id: 4,
      name: r'blockchainExplorer',
      type: IsarType.string,
    ),
    r'circulatingSupply': PropertySchema(
      id: 5,
      name: r'circulatingSupply',
      type: IsarType.double,
    ),
    r'currentPrice': PropertySchema(
      id: 6,
      name: r'currentPrice',
      type: IsarType.double,
    ),
    r'dailyChange': PropertySchema(
      id: 7,
      name: r'dailyChange',
      type: IsarType.double,
    ),
    r'description': PropertySchema(
      id: 8,
      name: r'description',
      type: IsarType.string,
    ),
    r'homepage': PropertySchema(
      id: 9,
      name: r'homepage',
      type: IsarType.string,
    ),
    r'id': PropertySchema(
      id: 10,
      name: r'id',
      type: IsarType.string,
    ),
    r'image': PropertySchema(
      id: 11,
      name: r'image',
      type: IsarType.string,
    ),
    r'issueDate': PropertySchema(
      id: 12,
      name: r'issueDate',
      type: IsarType.string,
    ),
    r'marketCap': PropertySchema(
      id: 13,
      name: r'marketCap',
      type: IsarType.double,
    ),
    r'marketCapChange_Percentage24h': PropertySchema(
      id: 14,
      name: r'marketCapChange_Percentage24h',
      type: IsarType.double,
    ),
    r'marketCapRank': PropertySchema(
      id: 15,
      name: r'marketCapRank',
      type: IsarType.long,
    ),
    r'maxSupply': PropertySchema(
      id: 16,
      name: r'maxSupply',
      type: IsarType.double,
    ),
    r'name': PropertySchema(
      id: 17,
      name: r'name',
      type: IsarType.string,
    ),
    r'symbol': PropertySchema(
      id: 18,
      name: r'symbol',
      type: IsarType.string,
    ),
    r'totalSupply': PropertySchema(
      id: 19,
      name: r'totalSupply',
      type: IsarType.double,
    ),
    r'whitepaper': PropertySchema(
      id: 20,
      name: r'whitepaper',
      type: IsarType.string,
    )
  },
  estimateSize: _coinEstimateSize,
  serialize: _coinSerialize,
  deserialize: _coinDeserialize,
  deserializeProp: _coinDeserializeProp,
  idName: r'iD',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _coinGetId,
  getLinks: _coinGetLinks,
  attach: _coinAttach,
  version: '3.1.0+1',
);

int _coinEstimateSize(
  Coin object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.athDate.length * 3;
  bytesCount += 3 + object.atlDate.length * 3;
  bytesCount += 3 + object.blockchainExplorer.length * 3;
  bytesCount += 3 + object.description.length * 3;
  bytesCount += 3 + object.homepage.length * 3;
  bytesCount += 3 + object.id.length * 3;
  bytesCount += 3 + object.image.length * 3;
  bytesCount += 3 + object.issueDate.length * 3;
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.symbol.length * 3;
  bytesCount += 3 + object.whitepaper.length * 3;
  return bytesCount;
}

void _coinSerialize(
  Coin object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.allTimeHigh);
  writer.writeDouble(offsets[1], object.allTimeLow);
  writer.writeString(offsets[2], object.athDate);
  writer.writeString(offsets[3], object.atlDate);
  writer.writeString(offsets[4], object.blockchainExplorer);
  writer.writeDouble(offsets[5], object.circulatingSupply);
  writer.writeDouble(offsets[6], object.currentPrice);
  writer.writeDouble(offsets[7], object.dailyChange);
  writer.writeString(offsets[8], object.description);
  writer.writeString(offsets[9], object.homepage);
  writer.writeString(offsets[10], object.id);
  writer.writeString(offsets[11], object.image);
  writer.writeString(offsets[12], object.issueDate);
  writer.writeDouble(offsets[13], object.marketCap);
  writer.writeDouble(offsets[14], object.marketCapChange_Percentage24h);
  writer.writeLong(offsets[15], object.marketCapRank);
  writer.writeDouble(offsets[16], object.maxSupply);
  writer.writeString(offsets[17], object.name);
  writer.writeString(offsets[18], object.symbol);
  writer.writeDouble(offsets[19], object.totalSupply);
  writer.writeString(offsets[20], object.whitepaper);
}

Coin _coinDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Coin();
  object.allTimeHigh = reader.readDouble(offsets[0]);
  object.allTimeLow = reader.readDouble(offsets[1]);
  object.athDate = reader.readString(offsets[2]);
  object.atlDate = reader.readString(offsets[3]);
  object.blockchainExplorer = reader.readString(offsets[4]);
  object.circulatingSupply = reader.readDouble(offsets[5]);
  object.currentPrice = reader.readDouble(offsets[6]);
  object.dailyChange = reader.readDouble(offsets[7]);
  object.description = reader.readString(offsets[8]);
  object.homepage = reader.readString(offsets[9]);
  object.iD = id;
  object.id = reader.readString(offsets[10]);
  object.image = reader.readString(offsets[11]);
  object.issueDate = reader.readString(offsets[12]);
  object.marketCap = reader.readDouble(offsets[13]);
  object.marketCapChange_Percentage24h = reader.readDouble(offsets[14]);
  object.marketCapRank = reader.readLongOrNull(offsets[15]);
  object.maxSupply = reader.readDoubleOrNull(offsets[16]);
  object.name = reader.readString(offsets[17]);
  object.symbol = reader.readString(offsets[18]);
  object.totalSupply = reader.readDouble(offsets[19]);
  object.whitepaper = reader.readString(offsets[20]);
  return object;
}

P _coinDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDouble(offset)) as P;
    case 1:
      return (reader.readDouble(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readDouble(offset)) as P;
    case 6:
      return (reader.readDouble(offset)) as P;
    case 7:
      return (reader.readDouble(offset)) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (reader.readString(offset)) as P;
    case 10:
      return (reader.readString(offset)) as P;
    case 11:
      return (reader.readString(offset)) as P;
    case 12:
      return (reader.readString(offset)) as P;
    case 13:
      return (reader.readDouble(offset)) as P;
    case 14:
      return (reader.readDouble(offset)) as P;
    case 15:
      return (reader.readLongOrNull(offset)) as P;
    case 16:
      return (reader.readDoubleOrNull(offset)) as P;
    case 17:
      return (reader.readString(offset)) as P;
    case 18:
      return (reader.readString(offset)) as P;
    case 19:
      return (reader.readDouble(offset)) as P;
    case 20:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _coinGetId(Coin object) {
  return object.iD;
}

List<IsarLinkBase<dynamic>> _coinGetLinks(Coin object) {
  return [];
}

void _coinAttach(IsarCollection<dynamic> col, Id id, Coin object) {
  object.iD = id;
}

extension CoinQueryWhereSort on QueryBuilder<Coin, Coin, QWhere> {
  QueryBuilder<Coin, Coin, QAfterWhere> anyID() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CoinQueryWhere on QueryBuilder<Coin, Coin, QWhereClause> {
  QueryBuilder<Coin, Coin, QAfterWhereClause> iDEqualTo(Id iD) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: iD,
        upper: iD,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterWhereClause> iDNotEqualTo(Id iD) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: iD, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: iD, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: iD, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: iD, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Coin, Coin, QAfterWhereClause> iDGreaterThan(Id iD,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: iD, includeLower: include),
      );
    });
  }

  QueryBuilder<Coin, Coin, QAfterWhereClause> iDLessThan(Id iD,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: iD, includeUpper: include),
      );
    });
  }

  QueryBuilder<Coin, Coin, QAfterWhereClause> iDBetween(
    Id lowerID,
    Id upperID, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerID,
        includeLower: includeLower,
        upper: upperID,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension CoinQueryFilter on QueryBuilder<Coin, Coin, QFilterCondition> {
  QueryBuilder<Coin, Coin, QAfterFilterCondition> allTimeHighEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'allTimeHigh',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> allTimeHighGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'allTimeHigh',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> allTimeHighLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'allTimeHigh',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> allTimeHighBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'allTimeHigh',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> allTimeLowEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'allTimeLow',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> allTimeLowGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'allTimeLow',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> allTimeLowLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'allTimeLow',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> allTimeLowBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'allTimeLow',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> athDateEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'athDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> athDateGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'athDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> athDateLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'athDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> athDateBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'athDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> athDateStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'athDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> athDateEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'athDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> athDateContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'athDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> athDateMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'athDate',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> athDateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'athDate',
        value: '',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> athDateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'athDate',
        value: '',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> atlDateEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'atlDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> atlDateGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'atlDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> atlDateLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'atlDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> atlDateBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'atlDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> atlDateStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'atlDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> atlDateEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'atlDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> atlDateContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'atlDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> atlDateMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'atlDate',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> atlDateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'atlDate',
        value: '',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> atlDateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'atlDate',
        value: '',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> blockchainExplorerEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'blockchainExplorer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> blockchainExplorerGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'blockchainExplorer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> blockchainExplorerLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'blockchainExplorer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> blockchainExplorerBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'blockchainExplorer',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> blockchainExplorerStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'blockchainExplorer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> blockchainExplorerEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'blockchainExplorer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> blockchainExplorerContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'blockchainExplorer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> blockchainExplorerMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'blockchainExplorer',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> blockchainExplorerIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'blockchainExplorer',
        value: '',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition>
      blockchainExplorerIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'blockchainExplorer',
        value: '',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> circulatingSupplyEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'circulatingSupply',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> circulatingSupplyGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'circulatingSupply',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> circulatingSupplyLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'circulatingSupply',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> circulatingSupplyBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'circulatingSupply',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> currentPriceEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'currentPrice',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> currentPriceGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'currentPrice',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> currentPriceLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'currentPrice',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> currentPriceBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'currentPrice',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> dailyChangeEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dailyChange',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> dailyChangeGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dailyChange',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> dailyChangeLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dailyChange',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> dailyChangeBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dailyChange',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> descriptionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> descriptionGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> descriptionLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> descriptionBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'description',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> descriptionContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> descriptionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'description',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> homepageEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'homepage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> homepageGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'homepage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> homepageLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'homepage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> homepageBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'homepage',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> homepageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'homepage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> homepageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'homepage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> homepageContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'homepage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> homepageMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'homepage',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> homepageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'homepage',
        value: '',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> homepageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'homepage',
        value: '',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> iDEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'iD',
        value: value,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> iDGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'iD',
        value: value,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> iDLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'iD',
        value: value,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> iDBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'iD',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> idEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> idGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> idLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> idBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> idStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> idEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> idContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> idMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'id',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> imageEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> imageGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> imageLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> imageBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'image',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> imageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> imageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> imageContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> imageMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'image',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> imageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'image',
        value: '',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> imageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'image',
        value: '',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> issueDateEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'issueDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> issueDateGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'issueDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> issueDateLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'issueDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> issueDateBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'issueDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> issueDateStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'issueDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> issueDateEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'issueDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> issueDateContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'issueDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> issueDateMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'issueDate',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> issueDateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'issueDate',
        value: '',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> issueDateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'issueDate',
        value: '',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> marketCapEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'marketCap',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> marketCapGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'marketCap',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> marketCapLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'marketCap',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> marketCapBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'marketCap',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition>
      marketCapChange_Percentage24hEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'marketCapChange_Percentage24h',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition>
      marketCapChange_Percentage24hGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'marketCapChange_Percentage24h',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition>
      marketCapChange_Percentage24hLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'marketCapChange_Percentage24h',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition>
      marketCapChange_Percentage24hBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'marketCapChange_Percentage24h',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> marketCapRankIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'marketCapRank',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> marketCapRankIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'marketCapRank',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> marketCapRankEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'marketCapRank',
        value: value,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> marketCapRankGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'marketCapRank',
        value: value,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> marketCapRankLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'marketCapRank',
        value: value,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> marketCapRankBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'marketCapRank',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> maxSupplyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'maxSupply',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> maxSupplyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'maxSupply',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> maxSupplyEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'maxSupply',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> maxSupplyGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'maxSupply',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> maxSupplyLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'maxSupply',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> maxSupplyBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'maxSupply',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> nameContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> nameMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> symbolEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'symbol',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> symbolGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'symbol',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> symbolLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'symbol',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> symbolBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'symbol',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> symbolStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'symbol',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> symbolEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'symbol',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> symbolContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'symbol',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> symbolMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'symbol',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> symbolIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'symbol',
        value: '',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> symbolIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'symbol',
        value: '',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> totalSupplyEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalSupply',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> totalSupplyGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalSupply',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> totalSupplyLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalSupply',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> totalSupplyBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalSupply',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> whitepaperEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'whitepaper',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> whitepaperGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'whitepaper',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> whitepaperLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'whitepaper',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> whitepaperBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'whitepaper',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> whitepaperStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'whitepaper',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> whitepaperEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'whitepaper',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> whitepaperContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'whitepaper',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> whitepaperMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'whitepaper',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> whitepaperIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'whitepaper',
        value: '',
      ));
    });
  }

  QueryBuilder<Coin, Coin, QAfterFilterCondition> whitepaperIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'whitepaper',
        value: '',
      ));
    });
  }
}

extension CoinQueryObject on QueryBuilder<Coin, Coin, QFilterCondition> {}

extension CoinQueryLinks on QueryBuilder<Coin, Coin, QFilterCondition> {}

extension CoinQuerySortBy on QueryBuilder<Coin, Coin, QSortBy> {
  QueryBuilder<Coin, Coin, QAfterSortBy> sortByAllTimeHigh() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'allTimeHigh', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByAllTimeHighDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'allTimeHigh', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByAllTimeLow() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'allTimeLow', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByAllTimeLowDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'allTimeLow', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByAthDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'athDate', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByAthDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'athDate', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByAtlDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'atlDate', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByAtlDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'atlDate', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByBlockchainExplorer() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'blockchainExplorer', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByBlockchainExplorerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'blockchainExplorer', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByCirculatingSupply() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'circulatingSupply', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByCirculatingSupplyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'circulatingSupply', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByCurrentPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentPrice', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByCurrentPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentPrice', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByDailyChange() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dailyChange', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByDailyChangeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dailyChange', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByHomepage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'homepage', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByHomepageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'homepage', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByImage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByImageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByIssueDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'issueDate', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByIssueDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'issueDate', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByMarketCap() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'marketCap', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByMarketCapDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'marketCap', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByMarketCapChange_Percentage24h() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'marketCapChange_Percentage24h', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy>
      sortByMarketCapChange_Percentage24hDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'marketCapChange_Percentage24h', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByMarketCapRank() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'marketCapRank', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByMarketCapRankDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'marketCapRank', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByMaxSupply() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxSupply', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByMaxSupplyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxSupply', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortBySymbol() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'symbol', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortBySymbolDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'symbol', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByTotalSupply() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalSupply', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByTotalSupplyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalSupply', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByWhitepaper() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'whitepaper', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> sortByWhitepaperDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'whitepaper', Sort.desc);
    });
  }
}

extension CoinQuerySortThenBy on QueryBuilder<Coin, Coin, QSortThenBy> {
  QueryBuilder<Coin, Coin, QAfterSortBy> thenByAllTimeHigh() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'allTimeHigh', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByAllTimeHighDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'allTimeHigh', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByAllTimeLow() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'allTimeLow', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByAllTimeLowDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'allTimeLow', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByAthDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'athDate', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByAthDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'athDate', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByAtlDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'atlDate', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByAtlDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'atlDate', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByBlockchainExplorer() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'blockchainExplorer', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByBlockchainExplorerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'blockchainExplorer', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByCirculatingSupply() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'circulatingSupply', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByCirculatingSupplyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'circulatingSupply', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByCurrentPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentPrice', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByCurrentPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentPrice', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByDailyChange() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dailyChange', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByDailyChangeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dailyChange', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByHomepage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'homepage', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByHomepageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'homepage', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iD', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iD', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByImage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByImageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByIssueDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'issueDate', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByIssueDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'issueDate', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByMarketCap() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'marketCap', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByMarketCapDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'marketCap', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByMarketCapChange_Percentage24h() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'marketCapChange_Percentage24h', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy>
      thenByMarketCapChange_Percentage24hDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'marketCapChange_Percentage24h', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByMarketCapRank() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'marketCapRank', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByMarketCapRankDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'marketCapRank', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByMaxSupply() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxSupply', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByMaxSupplyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxSupply', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenBySymbol() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'symbol', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenBySymbolDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'symbol', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByTotalSupply() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalSupply', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByTotalSupplyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalSupply', Sort.desc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByWhitepaper() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'whitepaper', Sort.asc);
    });
  }

  QueryBuilder<Coin, Coin, QAfterSortBy> thenByWhitepaperDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'whitepaper', Sort.desc);
    });
  }
}

extension CoinQueryWhereDistinct on QueryBuilder<Coin, Coin, QDistinct> {
  QueryBuilder<Coin, Coin, QDistinct> distinctByAllTimeHigh() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'allTimeHigh');
    });
  }

  QueryBuilder<Coin, Coin, QDistinct> distinctByAllTimeLow() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'allTimeLow');
    });
  }

  QueryBuilder<Coin, Coin, QDistinct> distinctByAthDate(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'athDate', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Coin, Coin, QDistinct> distinctByAtlDate(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'atlDate', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Coin, Coin, QDistinct> distinctByBlockchainExplorer(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'blockchainExplorer',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Coin, Coin, QDistinct> distinctByCirculatingSupply() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'circulatingSupply');
    });
  }

  QueryBuilder<Coin, Coin, QDistinct> distinctByCurrentPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'currentPrice');
    });
  }

  QueryBuilder<Coin, Coin, QDistinct> distinctByDailyChange() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dailyChange');
    });
  }

  QueryBuilder<Coin, Coin, QDistinct> distinctByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'description', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Coin, Coin, QDistinct> distinctByHomepage(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'homepage', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Coin, Coin, QDistinct> distinctById(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Coin, Coin, QDistinct> distinctByImage(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'image', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Coin, Coin, QDistinct> distinctByIssueDate(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'issueDate', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Coin, Coin, QDistinct> distinctByMarketCap() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'marketCap');
    });
  }

  QueryBuilder<Coin, Coin, QDistinct>
      distinctByMarketCapChange_Percentage24h() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'marketCapChange_Percentage24h');
    });
  }

  QueryBuilder<Coin, Coin, QDistinct> distinctByMarketCapRank() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'marketCapRank');
    });
  }

  QueryBuilder<Coin, Coin, QDistinct> distinctByMaxSupply() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'maxSupply');
    });
  }

  QueryBuilder<Coin, Coin, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Coin, Coin, QDistinct> distinctBySymbol(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'symbol', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Coin, Coin, QDistinct> distinctByTotalSupply() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalSupply');
    });
  }

  QueryBuilder<Coin, Coin, QDistinct> distinctByWhitepaper(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'whitepaper', caseSensitive: caseSensitive);
    });
  }
}

extension CoinQueryProperty on QueryBuilder<Coin, Coin, QQueryProperty> {
  QueryBuilder<Coin, int, QQueryOperations> iDProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'iD');
    });
  }

  QueryBuilder<Coin, double, QQueryOperations> allTimeHighProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'allTimeHigh');
    });
  }

  QueryBuilder<Coin, double, QQueryOperations> allTimeLowProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'allTimeLow');
    });
  }

  QueryBuilder<Coin, String, QQueryOperations> athDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'athDate');
    });
  }

  QueryBuilder<Coin, String, QQueryOperations> atlDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'atlDate');
    });
  }

  QueryBuilder<Coin, String, QQueryOperations> blockchainExplorerProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'blockchainExplorer');
    });
  }

  QueryBuilder<Coin, double, QQueryOperations> circulatingSupplyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'circulatingSupply');
    });
  }

  QueryBuilder<Coin, double, QQueryOperations> currentPriceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'currentPrice');
    });
  }

  QueryBuilder<Coin, double, QQueryOperations> dailyChangeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dailyChange');
    });
  }

  QueryBuilder<Coin, String, QQueryOperations> descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'description');
    });
  }

  QueryBuilder<Coin, String, QQueryOperations> homepageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'homepage');
    });
  }

  QueryBuilder<Coin, String, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Coin, String, QQueryOperations> imageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'image');
    });
  }

  QueryBuilder<Coin, String, QQueryOperations> issueDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'issueDate');
    });
  }

  QueryBuilder<Coin, double, QQueryOperations> marketCapProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'marketCap');
    });
  }

  QueryBuilder<Coin, double, QQueryOperations>
      marketCapChange_Percentage24hProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'marketCapChange_Percentage24h');
    });
  }

  QueryBuilder<Coin, int?, QQueryOperations> marketCapRankProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'marketCapRank');
    });
  }

  QueryBuilder<Coin, double?, QQueryOperations> maxSupplyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'maxSupply');
    });
  }

  QueryBuilder<Coin, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<Coin, String, QQueryOperations> symbolProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'symbol');
    });
  }

  QueryBuilder<Coin, double, QQueryOperations> totalSupplyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalSupply');
    });
  }

  QueryBuilder<Coin, String, QQueryOperations> whitepaperProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'whitepaper');
    });
  }
}
