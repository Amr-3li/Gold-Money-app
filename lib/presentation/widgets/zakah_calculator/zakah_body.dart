import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gold/cubit/gold/gold_cubit.dart';
import 'package:gold/presentation/widgets/zakah_calculator/zakah_calculator_content.dart';

class ZakahCalculatorBody extends StatefulWidget {
  const ZakahCalculatorBody({super.key});

  @override
  State<ZakahCalculatorBody> createState() => _ZakahCalculatorBodyState();
}

class _ZakahCalculatorBodyState extends State<ZakahCalculatorBody> {
  @override
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GoldCubit, GoldState>(
      builder: (context, state) {
        if (state is GoldLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is GoldLoaded) {
          return ZakahCalculatorContent(goldprice: state.gold.rate.price);
        } else {
          return const Center();
        }
      },
    );
  }
}
