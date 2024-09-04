import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gold/cubit/gold/gold_cubit.dart';
import 'package:gold/data/repository/gold_repo.dart';
import 'package:gold/data/wep_sevices/gold_wep_services.dart';
import 'package:gold/presentation/widgets/gold_bars_calculator/gold_bar_calculator_body.dart';

class GoldBarCalculator extends StatelessWidget {
  const GoldBarCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bullion Calculator"),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/Images/background/gold-bars.jpg"),
            filterQuality: FilterQuality.low,
            fit: BoxFit.fill,
            opacity: 0.5,
          ),
        ),
        child: BlocProvider(
          create: (context) => GoldCubit(GoldRepository(GoldWepServices())),
          child: const GoldBarCalculatorBody(),
        ),
      ),
    );
  }
}
