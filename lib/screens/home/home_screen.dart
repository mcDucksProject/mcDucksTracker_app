import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:mcducktracker/shared/services/service_locator.dart';
import 'package:mcducktracker/shared/services/externalData/binance/binance_public_service.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("McDuck's Tracker")),
        backgroundColor: Colors.blueAccent,
        body: Scrollbar(
          child: ListView(
            padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
            children: [
              PairWidget(),
              PairWidget(),
              PairWidget(),
              PairWidget(),
              PairWidget(),
            ],
          ),
        ));
  }
}

class PairWidget extends StatefulWidget {
  @override
  _PairWidgetState createState() => _PairWidgetState();
}
const defaultInsets = EdgeInsets.all(8);
class _PairWidgetState extends State<PairWidget> {
  @override
  Widget build(BuildContext context) {
    BinancePublicService binancePublic = getIt<BinancePublicService>();
    binancePublic.getTickerData();
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      child: SafeArea(
        top: false,
        bottom: false,
        child: Padding(
            padding: defaultInsets,
            child: SizedBox(
                height: 100,
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Column(children: [
                            Container(
                              padding: defaultInsets,
                              child: RichText(
                                text: TextSpan(
                                    style: DefaultTextStyle.of(context).style,
                                    children: const <TextSpan>[
                                      TextSpan(
                                          text: "ETH ",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      TextSpan(text: "BTC", style: TextStyle(
                                        fontWeight: FontWeight.w300
                                      ))
                                    ]),
                              ),
                            )
                          ]),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                              children:[
                            Container(
                              alignment: Alignment.center,
                              padding: defaultInsets,
                              child: RichText(
                                text: TextSpan(
                                  style: DefaultTextStyle.of(context).style,
                                  children: const <TextSpan>[
                                    TextSpan(
                                      text: "444%"
                                    )
                                  ]
                                )
                              ),
                            )
                          ])
                        ],
                      )
                    ],
                  ),
                ))),
      ),
    );
  }
}
