import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gold/cubit/gold/gold_cubit.dart';
import 'package:gold/presentation/widgets/gold_price/gold_price_table.dart';
import 'package:gold/presentation/widgets/shimmer/gold_shimmer_page.dart';
import 'package:shimmer/shimmer.dart';

class GoldPriceBody extends StatelessWidget {
  const GoldPriceBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double hight = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      physics: const ScrollPhysics(parent: BouncingScrollPhysics()),
      child: BlocBuilder<GoldCubit, GoldState>(
        builder: (context, state) {
          if (state is GoldLoading) {
            return SimmerGoldPage(hight: hight);
          } else if (state is GoldLoaded) {
            return GoldPriceTable(gold: state.gold);
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
      ),
    );
  }
}

