import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gold/cubit/currencies/currencies_cubit.dart';
import 'package:gold/cubit/gold/gold_cubit.dart';
import 'package:gold/data/repository/gold_repo.dart';
import 'package:gold/data/wep_sevices/gold_wep_services.dart';
import 'package:gold/presentation/Pages/bullion_calculator.dart';
import 'package:gold/presentation/Pages/currencies_price.dart';
import 'package:gold/presentation/Pages/gold_price.dart';
import 'package:gold/presentation/Pages/zakah_calculator.dart';

List<Map<String, dynamic>> homeList = [
  {
    "title": "Currencies",
    "route": (context) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return BlocProvider(
              create: (context) =>
                  CurrenciesCubit(GoldRepository(GoldWepServices())),
              child: const CurrenciesPrice(),
            );
          },
        ),
      );
    },
    "icon": "assets/Images/convert.png",
  },
  {
    "title": "Gold Price",
    "route": (context) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => GoldCubit(GoldRepository(GoldWepServices())),
            child: const GoldPrice(),
          ),
        ),
      );
    },
    "icon": "assets/Images/gold.png",
  },
  {
    "title": "Zakah Calculator",
    "route": (context) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => GoldCubit(GoldRepository(GoldWepServices())),
            child: const ZakahCalculator(),
          ),
        ),
      );
    },
    "icon": "assets/Images/calculations.png",
  },
  {
    "title": "Gold Bars",
    "route": (context) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => GoldCubit(GoldRepository(GoldWepServices())),
            child: const BullionCalculator(),
          ),
        ),
      );
    },
    "icon": "assets/Images/gold-bars.png",
  },
];
