import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gold/cubit/currencies/currencies_cubit.dart';
import 'package:gold/cubit/gold/gold_cubit.dart';
import 'package:gold/presentation/widgets/home/home_currencies_data.dart';
import 'package:gold/presentation/widgets/home/home_gold_data.dart';
import 'package:gold/presentation/widgets/home/home_gridview.dart';

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
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            width: double.infinity,
            child: Expanded(
              child: Text(
                "hello , welcome to gold price app",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 9, 241, 0).withOpacity(0.4),
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
              ),
            ),
          ),
          const SizedBox(height: 20),
          const HomeGolddata(),
          const SizedBox(height: 20),
          const HomeCurrenciesData(),
          const SizedBox(height: 20),
          const HomeGrideView(),
        ],
      ),
    );
  }
}
