
import 'package:mcducktracker/shared/models/order.dart';
import 'package:mcducktracker/shared/models/pair.dart';

class TrackerItem{
  Pair pair;
  DateTime start;
  List<Order> buyOrders;
  List<Order> sellOrders;
  double distanceToNextSell;
  double totalAmount;
  double totalStake;
  double expectedGain;
  double lastTickerData;
  TrackerItem(this.pair,
      this.start,
      this.buyOrders,
      this.sellOrders,
      this.distanceToNextSell,
      this.totalAmount,
      this.totalStake,
      this.expectedGain,
      this.lastTickerData);
}