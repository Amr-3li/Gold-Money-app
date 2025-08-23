import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gold/Consts/animations.dart';
import 'package:gold/cubit/gold/gold_cubit.dart';
import 'package:gold/presentation/widgets/gold_bars_calculator/gold_bar_calc_content.dart';
import 'package:lottie/lottie.dart';

class GoldBarCalculatorBody extends StatefulWidget {
  const GoldBarCalculatorBody({super.key});

  @override
  State<GoldBarCalculatorBody> createState() => _GoldBarCalculatorBodyState();
}

class _GoldBarCalculatorBodyState extends State<GoldBarCalculatorBody> {
  @override
  void initState() {
    super.initState();

    BlocProvider.of<GoldCubit>(context).getGoldPrice();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GoldCubit, GoldState>(
      builder: (context, state) {
        if (state is GoldLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is GoldLoaded) {
          return GoldBarCalculatorContent(goldPrice: state.gold.rate.price);
        } else if (state is GoldError) {
          return Center(
            child: Lottie.asset(
              MyAnimation.animationsError404,
              height: MediaQuery.of(context).size.height * 0.3,
              fit: BoxFit.cover,
            ),
          );
        } else {
          return const Center();
        }
      },
    );
  }
}
