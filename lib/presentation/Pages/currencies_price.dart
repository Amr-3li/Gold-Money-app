import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gold/cubit/currencies/currencies_cubit.dart';
import 'package:gold/presentation/widgets/currencies_prices/currencies_price_body.dart';

class CurrenciesPrice extends StatefulWidget {
  const CurrenciesPrice({super.key});

  @override
  State<CurrenciesPrice> createState() => _CurrenciesPriceState();
}

class _CurrenciesPriceState extends State<CurrenciesPrice> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<CurrenciesCubit>(context).getCurrencies();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.transparent,
      body: CurrenciesPriceBody(),
    );
  }
}
