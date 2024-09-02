import 'package:flutter/material.dart';
import 'package:gold/data/wep_sevices/gold_wep_services.dart';
import 'package:gold/presentation/bottom_navigation_bar.dart';

void main() {
  GoldWepServices().getGoldPrice();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(brightness: Brightness.dark, fontFamily: "jost"),
      debugShowCheckedModeBanner: false,
      home: const BottomNavigationBarWidget(),
    );
  }
}
