import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gold/cubit/gold/gold_cubit.dart';
import 'package:gold/presentation/widgets/gold_price/gold_price_body.dart';

class GoldPrice extends StatefulWidget {
  const GoldPrice({super.key});

  @override
  State<GoldPrice> createState() => _GoldPriceState();
}

class _GoldPriceState extends State<GoldPrice> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<GoldCubit>(context).getGoldPrice();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.transparent,
      body: GoldPriceBody(),
    );
  }
}

