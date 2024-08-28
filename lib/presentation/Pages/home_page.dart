import 'package:flutter/material.dart';
import 'package:gold/presentation/Pages/currencies_price.dart';
import 'package:gold/presentation/Pages/gold_price.dart';
import 'package:gold/presentation/Pages/zakah_calculator.dart';
import 'package:gold/presentation/widgets/home/home_appbar.dart';
import 'package:gold/presentation/widgets/home/home_body.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeBody(),
    );
  }
}
