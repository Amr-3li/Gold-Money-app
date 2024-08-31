import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gold/cubit/currencies/currencies_cubit.dart';
import 'package:gold/presentation/widgets/shimmer/home_shimmer.dart';

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
                text: "Dolar per EGP :   ",
                price: (1 / state.currencies.results.USD)
                    .toString()
                    .substring(0, 5),
                date:
                    "updated at  ${state.currencies.updated.hour}:${state.currencies.updated.minute} ",
              ),
            ],
          );
        } else if (state is CurrenciesError) {
          return Text(
            state.error,
            style: const TextStyle(color: Colors.red, fontSize: 18),
          );
        } else {
          return const Text("حدث خطأ ما");
        }
      },
    );
  }
}

class HomePriceWidget extends StatelessWidget {
  const HomePriceWidget({
    super.key,
    required this.text,
    required this.price,
    required this.date,
  });
  final String text, price, date;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.white, width: 2),
          color: const Color.fromARGB(255, 148, 94, 1).withOpacity(0.3),
        ),
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  text,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 255, 253, 250),
                      fontSize: 15,
                      fontWeight: FontWeight.normal),
                ),
                Text(price,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 255, 253, 250),
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                date,
                style: TextStyle(
                  color:
                      const Color.fromARGB(255, 255, 253, 250).withOpacity(0.6),
                  fontSize: 10,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
