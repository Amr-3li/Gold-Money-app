import 'package:flutter/material.dart';
import 'package:gold/presentation/Pages/currencies_price.dart';
import 'package:gold/presentation/Pages/gold_price.dart';
import 'package:gold/presentation/Pages/home_page.dart';
import 'package:gold/presentation/Pages/zakah_calculator.dart';
import 'package:gold/presentation/widgets/home/home_appbar.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int _selectedIndex = 0;
  @override
  void initState() {
    super.initState();

    _selectedIndex = 0;
  }

  onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    const GoldPrice(),
    const CurrenciesPrice(),
    const ZakahCalculator()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60), child: HomeAppBar()),
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: bottomNavigationWidget(),
    );
  }

  Container bottomNavigationWidget() {
    return Container(
      color: const Color.fromARGB(255, 32, 32, 32),
      height: 60,
      child: Align(
        alignment: AlignmentDirectional.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: GNav(
            selectedIndex: _selectedIndex,
            onTabChange: onItemTapped,
            tabBorderRadius: 30,
            gap: 5,
            tabActiveBorder: Border.all(
                color: const Color.fromARGB(255, 188, 120, 1), width: 3),
            rippleColor: const Color.fromARGB(255, 244, 154, 0),
            activeColor: const Color.fromARGB(255, 164, 104, 0),
            color: const Color.fromARGB(255, 162, 81, 0).withOpacity(0.6),
            backgroundColor: const Color.fromARGB(255, 32, 32, 32),
            iconSize: 24,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
            tabs: const [
              GButton(
                  icon: Icons.home,
                  text: 'Home',
                  textColor: Color.fromARGB(255, 255, 162, 0)),
              GButton(
                icon: Icons.attach_money_rounded,
                text: 'gold price',
                textColor: Color.fromARGB(255, 255, 162, 0),
              ),
              GButton(
                  icon: Icons.currency_exchange,
                  text: 'Currencies price',
                  textColor: Color.fromARGB(255, 255, 162, 0)),
              GButton(
                  icon: Icons.calculate,
                  text: 'Zakah Calculator',
                  textColor: Color.fromARGB(255, 255, 162, 0)),
            ],
          ),
        ),
      ),
    );
  }
}
