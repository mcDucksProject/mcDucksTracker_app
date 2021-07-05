import 'package:json_annotation/json_annotation.dart';

part 'order.g.dart';

@JsonSerializable()
class Order{
  int id;
  double amount;
  double unitPrice;
  OrderStatus status;
  Type type;
  DateTime dateTime;
  Order(this.id,this.amount,this.unitPrice,this.status,this.type,this.dateTime);

  factory Order.fromJson(Map<String,dynamic> json) => _$OrderFromJson(json);

  Map<String,dynamic> toJson() => _$OrderToJson(this);
}
enum Type{
  BUY,SELL
}
enum OrderStatus{
  OPEN,FILLED,CANCELLED
}