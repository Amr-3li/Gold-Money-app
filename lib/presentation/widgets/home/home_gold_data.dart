import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gold/cubit/gold/gold_cubit.dart';
import 'package:gold/presentation/widgets/home/home_price_widgit.dart';
import 'package:gold/presentation/widgets/shimmer/home_shimmer.dart';

class HomeGolddata extends StatelessWidget {
  const HomeGolddata({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GoldCubit, GoldState>(
      builder: (context, state) {
        if (state is GoldLoading) {
          return const HomeShimmerLoading();
        } else if (state is GoldLoaded) {
          return HomePriceWidget(
            text: "gold 21  :   ",
            price:
                "${((state.gold.rate.price / 31.1035) * (21 / 24)).toString().substring(0, 7)}  EGP",
            date:
                "updated at  ${state.gold.timestamp.hour}:${state.gold.timestamp.minute} ",
          );
        } else {
          return Container();
        }
      },
    );
  }
}
