import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gold/cubit/gold/gold_cubit.dart';
import 'package:gold/presentation/widgets/gold_bars_calculator/gold_bar_calc_content.dart';

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
            child: Text(
              state.error,
              style: const TextStyle(color: Colors.red, fontSize: 18),
            ),
          );
        } else {
          return const Center();
        }
      },
    );
  }
}
