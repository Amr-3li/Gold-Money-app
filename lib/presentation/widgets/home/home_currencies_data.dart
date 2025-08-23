import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gold/cubit/currencies/currencies_cubit.dart';
import 'package:gold/presentation/widgets/home/home_price_widgit.dart';
import 'package:gold/presentation/widgets/shimmer/home_shimmer.dart';
import 'package:lottie/lottie.dart';

class HomeCurrenciesData extends StatelessWidget {
  const HomeCurrenciesData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CurrenciesCubit, CurrenciesState>(
      builder: (context, state) {
        if (state is CurrenciesLoading) {
          return const HomeShimmerLoading();
        } else if (state is CurrenciesLoaded) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              HomePriceWidget(
                text: "Dolar :   ",
                price:
                    "${(1 / state.currencies.results.USD).toString().substring(0, 5)}   EGP",
                date:
                    "updated at  ${state.currencies.updated.hour}:${state.currencies.updated.minute}  ",
              ),
            ],
          );
        } else {
          return Center(
            child: Lottie.asset(
              'assets/animations/error.json',
              height: MediaQuery.of(context).size.height * 0.3,
              fit: BoxFit.cover,
            ),
          );
        }
      },
    );
  }
}
