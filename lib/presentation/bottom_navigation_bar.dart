import 'package:flutter/material.dart';
import 'package:gold/cubit/currencies/currencies_cubit.dart';
import 'package:gold/cubit/gold/gold_cubit.dart';
import 'package:gold/data/repository/gold_repo.dart';
import 'package:gold/data/wep_sevices/gold_wep_services.dart';
import 'package:gold/presentation/Pages/currencies_price.dart';
import 'package:gold/presentation/Pages/gold_price.dart';
import 'package:gold/presentation/Pages/home_page.dart';
import 'package:gold/presentation/Pages/zakah_calculator.dart';
import 'package:gold/presentation/widgets/bottom_navigation_widget.dart';
import 'package:gold/presentation/widgets/home/home_appbar.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) =>
                  CurrenciesCubit(GoldRepository(GoldWepServices()))),
          BlocProvider(
              create: (context) =>
                  GoldCubit(GoldRepository(GoldWepServices()))),
        ],
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationWidget(
        onItemTapped: onItemTapped,
        selectedIndex: _selectedIndex,
      ),
    );
  }
}
