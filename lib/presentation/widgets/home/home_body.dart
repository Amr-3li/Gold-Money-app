import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gold/cubit/currencies/currencies_cubit.dart';
import 'package:gold/cubit/gold/gold_cubit.dart';
import 'package:gold/data/repository/gold_repo.dart';
import 'package:gold/data/wep_sevices/gold_wep_services.dart';
import 'package:gold/presentation/Pages/bullion_calculator.dart';
import 'package:gold/presentation/Pages/zakah_calculator.dart';
import 'package:gold/presentation/widgets/home/home_currencies_data.dart';
import 'package:gold/presentation/widgets/home/home_gold_data.dart';
import 'package:gold/presentation/widgets/home/home_grid_item.dart';
import 'package:gold/presentation/widgets/home/home_text_widget.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  void initState() {
    super.initState();

    getCurrenciesData();
    getGoldData();
  }

  void getGoldData() async {
    await BlocProvider.of<GoldCubit>(context).getGoldPrice();
  }

  void getCurrenciesData() async {
    await BlocProvider.of<CurrenciesCubit>(context).getCurrencies();
  }

  @override
  Widget build(BuildContext context) {
   
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HomeTextWidget(),
          const SizedBox(height: 20),
          const HomeGolddata(),
          const SizedBox(height: 20),
          const HomeCurrenciesData(),
          const SizedBox(height: 20),
          HomeItemPage(
            image: "assets/Images/calculations.png",
            title: "Zakah Calculator",
            route: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return BlocProvider(
                      create: (context) =>
                          CurrenciesCubit(GoldRepository(GoldWepServices())),
                      child: const ZakahCalculator(),
                    );
                  },
                ),
              );
            },
          ),
          const SizedBox(height: 20),
          HomeItemPage(
            image: "assets/Images/gold-bars.png",
            title: "gold bar price",
            route: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return BlocProvider(
                      create: (context) =>
                          CurrenciesCubit(GoldRepository(GoldWepServices())),
                      child: const BullionCalculator(),
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
