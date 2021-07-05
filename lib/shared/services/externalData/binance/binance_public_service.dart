
import 'dart:convert';

import 'package:mcducktracker/shared/models/binance/ticker_pair.dart';
import 'package:http/http.dart' as http;

class BinancePublicService{
  static const String URL = "https://api.binance.com";
  static const String TICKER_ENDPOINT = "/api/v3/ticker/price";
  static const int RATE_LIMIT_MILISECONDS = 30000;
  List<TickerPair> tickerPair = List<TickerPair>.empty(growable: true);
  DateTime lastTickerCall = new DateTime(2020);

  Future<List<TickerPair>> getTickerData() async{
    DateTime now = DateTime.now();
    if(now.millisecondsSinceEpoch - this.lastTickerCall.millisecondsSinceEpoch > RATE_LIMIT_MILISECONDS){
      final http.Response response = await http.get(Uri.parse(URL+TICKER_ENDPOINT));
      final List<dynamic> body = jsonDecode(response.body);
      tickerPair = List<TickerPair>.empty(growable: true);
      if(response.statusCode == 200){
        body.forEach((element) {
          tickerPair.add(TickerPair.fromJson(element));
        });
      }
      this.lastTickerCall = DateTime.now();
    }
    return tickerPair;
  }
  DateTime getLastTickerCall(){
    return this.lastTickerCall;
  }
}