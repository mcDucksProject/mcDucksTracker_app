import 'package:flutter/material.dart';
import 'package:mcducktracker/screens/home/home_screen.dart';
import 'package:mcducktracker/shared/services/service_locator.dart';

void main() {
  initGetIt();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
