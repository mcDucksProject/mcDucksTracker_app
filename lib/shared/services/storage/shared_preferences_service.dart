
import 'dart:convert';

import 'package:mcducktracker/shared/models/order.dart';
import 'package:mcducktracker/shared/models/pair.dart';
import 'package:mcducktracker/shared/services/storage/storage_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService extends StorageService{
  late SharedPreferences _sharedPreferences;
  SharedPreferencesService()  {
    this.init();
  }
  void init() async{
    this._sharedPreferences = await SharedPreferences.getInstance();
  }
  @override
  List<Order> getPairOrders(Pair pair) {
    return this._sharedPreferences.get("orders") as List<Order>;
  }

  @override
  List<Pair> getPairs() {
    String? result = this._sharedPreferences.getString("pairs");
    return result != null ? jsonDecode(result) : List<Pair>.empty();
  }

  @override
  void savePair(Pair pair) {
    List<Pair> pairs = this.getPairs();
    pairs.add(pair);
    this.savePairs(pairs);
  }

  @override
  void savePairs(List<Pair> pairs) {
    this._sharedPreferences.setString("pairs", jsonEncode(pairs));
  }

}