import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gold/cubit/gold/gold_cubit.dart';
import 'package:gold/presentation/widgets/gold_price/gold_price_contetent.dart';
import 'package:gold/presentation/widgets/shimmer/gold_and_curr_shimmer_page.dart';

class GoldPriceBody extends StatelessWidget {
  const GoldPriceBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double hight = MediaQuery.of(context).size.height;
    return BlocBuilder<GoldCubit, GoldState>(
      builder: (context, state) {
        if (state is GoldLoading) {
          return ShimmerGoldAndCurrenciesPage(hight: hight);
        } else if (state is GoldLoaded) {
          return GoldPriceContent(gold: state.gold);
        } else if (state is GoldError) {
          return Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  BlocProvider.of<GoldCubit>(context).getGoldPrice();
                },
                child: const Text("Reload"),
              ),
            ),
          );
        } else {
          return const Center();
        }
      },
    );
  }
}
