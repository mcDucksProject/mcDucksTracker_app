
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:mcducktracker/shared/models/order.dart';

part 'pair.g.dart';

@JsonSerializable(explicitToJson: true)
class Pair{
  int id;
  List<Order> orders;
  StakeCurrency stakeCurrency;
  String currency;
  Exchange exchange;
  Pair(this.id,this.stakeCurrency, this.currency,this.orders,this.exchange);

  factory Pair.fromJson(Map<String,dynamic> json) => _$PairFromJson(json);

  Map<String,dynamic> toJson() => _$PairToJson(this);
}
enum Exchange{
  BINANCE
}
enum StakeCurrency{
  USDT,BTC
}