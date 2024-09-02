import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gold/cubit/gold/gold_cubit.dart';
import 'package:gold/data/models/gold_model.dart';
import 'package:gold/presentation/widgets/gold_price/gold_price_table.dart';
import 'package:gold/presentation/widgets/home/home_price_widgit.dart';

class GoldPriceContent extends StatelessWidget {
  const GoldPriceContent({super.key, required this.gold});
  final GoldModel gold;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        const Text("Hello,  ", style: TextStyle(fontSize: 20)),
        const SizedBox(height: 5),
        Text(
            "This data updated at ${gold.timestamp.day}/${gold.timestamp.month} , ${gold.timestamp.hour}:${gold.timestamp.minute} AM",
            style: const TextStyle(fontSize: 20)),
        const SizedBox(height: 30),
        HomePriceWidget(
            text: "An ounce of gold : ",
            price: gold.rate.price.toString(),
            date: "${gold.timestamp.hour}:${gold.timestamp.minute}"),
        const SizedBox(height: 20),
        GoldPriceTable(gold: gold),
        const SizedBox(height: 30),
        Align(
          alignment: AlignmentDirectional.center,
          child: ElevatedButton.icon(
              style: const ButtonStyle(
                  backgroundColor:
                      WidgetStatePropertyAll(Color.fromARGB(108, 175, 105, 0))),
              onPressed: () {
                BlocProvider.of<GoldCubit>(context).getGoldPrice();
              },
              label: const Icon(Icons.loop)),
        )
      ],
    );
  }
}
