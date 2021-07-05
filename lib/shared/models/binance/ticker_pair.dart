import 'dart:collection';

import 'package:json_annotation/json_annotation.dart';

part 'ticker_pair.g.dart';

@JsonSerializable()
class TickerPair{
  String symbol;
  @JsonKey(fromJson: _stringToDouble, toJson: _doubleToString)
  double price;

  TickerPair(this.symbol,this.price);

  factory TickerPair.fromJson(LinkedHashMap<String,dynamic> json) => _$TickerPairFromJson(json);

  Map<String,dynamic> toJson() => _$TickerPairToJson(this);
  static double _stringToDouble(String number) => double.parse(number);
  static String _doubleToString(double number) => number.toString();
}