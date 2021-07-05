
import 'package:mcducktracker/shared/models/order.dart';
import 'package:mcducktracker/shared/models/pair.dart';
import 'dart:async';

abstract class StorageService{
  List<Pair> getPairs();
  void savePair(Pair pair);
  List<Order> getPairOrders(Pair pair);
  void savePairs(List<Pair> pairs);
}
