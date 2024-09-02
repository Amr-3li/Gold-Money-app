import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gold/cubit/currencies/currencies_cubit.dart';
import 'package:gold/data/models/currency_model.dart';
import 'package:gold/presentation/widgets/home/home_price_widgit.dart';

class CurrenciesPriceContent extends StatelessWidget {
  const CurrenciesPriceContent({super.key, required this.currencies});
  final CurrencyModel currencies;
  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> currencyList = [
      {
        "Text": "dollar :   ",
        "price": (1 / currencies.results.USD).toString().substring(0, 6),
        "date": "${currencies.updated.hour}:${currencies.updated.minute}",
        "image": "assets/Images/flags/usa.png"
      },
      {
        "Text": "Euro :   ",
        "price": (1 / currencies.results.EUR).toString().substring(0, 6),
        "date": "${currencies.updated.hour}:${currencies.updated.minute}",
        "image": "assets/Images/flags/auro.png"
      },
      {
        "Text": "Pound :   ",
        "price": (1 / currencies.results.GBP).toString().substring(0, 6),
        "date": "${currencies.updated.hour}:${currencies.updated.minute}",
        "image": "assets/Images/flags/emgltra.png"
      },
      {
        "Text": "Yen :   ",
        "price": (1 / currencies.results.JPY).toString().substring(0, 6),
        "date": "${currencies.updated.hour}:${currencies.updated.minute}",
        "image": "assets/Images/flags/jaban.png"
      },
      {
        "Text": "Rial :   ",
        "price": (1 / currencies.results.OMR).toString().substring(0, 6),
        "date": "${currencies.updated.hour}:${currencies.updated.minute}",
        "image": "assets/Images/flags/oman.png"
      },
      {
        "Text": "Yuan :   ",
        "price": (1 / currencies.results.CNY).toString().substring(0, 6),
        "date": "${currencies.updated.hour}:${currencies.updated.minute}",
        "image": "assets/Images/flags/china.png"
      },
      {
        "Text": "Dirham :   ",
        "price": (1 / currencies.results.AED).toString().substring(0, 6),
        "date": "${currencies.updated.hour}:${currencies.updated.minute}",
        "image": "assets/Images/flags/UAE.png"
      },
      {
        "Text": "Dinar :   ",
        "price": (1 / currencies.results.KWD).toString().substring(0, 6),
        "date": "${currencies.updated.hour}:${currencies.updated.minute}",
        "image": "assets/Images/flags/kwit.png"
      },
      {
        "Text": "Ruble :   ",
        "price": (1 / currencies.results.RUB).toString().substring(0, 6),
        "date": "${currencies.updated.hour}:${currencies.updated.minute}",
        "image": "assets/Images/flags/russia.png"
      },
      {
        "Text": "Rial Saudi :   ",
        "price": (1 / currencies.results.SAR).toString().substring(0, 6),
        "date": "${currencies.updated.hour}:${currencies.updated.minute}",
        "image": "assets/Images/flags/sud.png"
      },
      {
        "Text": "Pound Sudan :   ",
        "price": (1 / currencies.results.SDG).toString().substring(0, 6),
        "date": "${currencies.updated.hour}:${currencies.updated.minute}",
        "image": "assets/Images/flags/sodan.png"
      },
      {
        "Text": "Qatar :   ",
        "price": (1 / currencies.results.QAR).toString().substring(0, 6),
        "date": "${currencies.updated.hour}:${currencies.updated.minute}",
        "image": "assets/Images/flags/qatar.png"
      },
    ];
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          const Text("Hello,  ", style: TextStyle(fontSize: 20)),
          const SizedBox(height: 5),
          Text(
              "This data updated at ${currencies.updated.day}/${currencies.updated.month} , ${currencies.updated.hour}:${currencies.updated.minute} AM",
              style: const TextStyle(fontSize: 20, color: Colors.green)),
          const SizedBox(height: 5),
          const Text("All prices per EGP ", style: TextStyle(fontSize: 20)),
          const SizedBox(height: 30),
          ListView.builder(
            itemCount: currencyList.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: HomePriceWidget(
                    text: currencyList[index]["Text"]!,
                    price: currencyList[index]["price"]!,
                    date: currencyList[index]["date"]!,
                    image: currencyList[index]["image"]!),
              );
            },
          ),
          const SizedBox(height: 20),
          Align(
            alignment: AlignmentDirectional.center,
            child: ElevatedButton.icon(
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                        Color.fromARGB(108, 175, 105, 0))),
                onPressed: () {
                  BlocProvider.of<CurrenciesCubit>(context).getCurrencies();
                },
                label: const Icon(Icons.loop)),
          )
        ],
      ),
    );
  }
}
