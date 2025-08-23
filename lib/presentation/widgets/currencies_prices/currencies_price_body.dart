import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gold/cubit/currencies/currencies_cubit.dart';
import 'package:gold/presentation/widgets/currencies_prices/currencies_price_content.dart';
import 'package:gold/presentation/widgets/shimmer/gold_and_curr_shimmer_page.dart';
import 'package:lottie/lottie.dart';
import 'package:shimmer/shimmer.dart';

class CurrenciesPriceBody extends StatelessWidget {
  const CurrenciesPriceBody({super.key});

  @override
  Widget build(BuildContext context) {
    double hight = MediaQuery.of(context).size.height;
    return BlocBuilder<CurrenciesCubit, CurrenciesState>(
      builder: (context, state) {
        if (state is CurrenciesLoading) {
          return Center(
            child: Shimmer.fromColors(
              baseColor: Colors.grey,
              highlightColor: Colors.white,
              child: ShimmerGoldAndCurrenciesPage(
                hight: hight,
              ),
            ),
          );
        } else if (state is CurrenciesLoaded) {
          return CurrenciesPriceContent(currencies: state.currencies);
        } else if (state is CurrenciesError) {
          return Center(
            child: Lottie.asset(
              'assets/animations/error.json',
              height: hight * 0.3,
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
