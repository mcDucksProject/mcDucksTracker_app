// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticker_pair.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TickerPair _$TickerPairFromJson(Map<String, dynamic> json) {
  return TickerPair(
    json['symbol'] as String,
    TickerPair._stringToDouble(json['price'] as String),
  );
}

Map<String, dynamic> _$TickerPairToJson(TickerPair instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'price': TickerPair._doubleToString(instance.price),
    };
