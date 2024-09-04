import 'package:flutter/material.dart';
import 'package:gold/presentation/widgets/zakah_calculator/result_text.dart';

class GoldBarCalculatorContent extends StatefulWidget {
  const GoldBarCalculatorContent({super.key, required this.goldPrice});
  final double goldPrice;

  @override
  State<GoldBarCalculatorContent> createState() =>
      _GoldBarCalculatorContentState();
}

class _GoldBarCalculatorContentState extends State<GoldBarCalculatorContent> {
  double result = 0;
  double amount = 0;
  getResult() {
    result = amount * (widget.goldPrice / 31.1034);
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Text(
            "hello , welcome to gold bar calculator page",
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 44, 170, 48)),
          ),
          const SizedBox(
            height: 20,
          ),
          dropdownListGold(),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                result = getResult();
              });
            },
            style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
              Color.fromARGB(150, 44, 170, 48),
            )),
            child: const Text(
              "calculate",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          result != 0
              ? ResultText(
                  result: result.toString().substring(0, 8),
                  color: const Color.fromARGB(255, 255, 255, 255))
              : Container(),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  DropdownMenu<num> dropdownListGold() {
    return DropdownMenu(
        inputDecorationTheme: const InputDecorationTheme(
          filled: true,
          fillColor: Color.fromARGB(136, 170, 91, 0),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          contentPadding: EdgeInsets.symmetric(horizontal: 30),
          labelStyle: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        width: double.infinity,
        hintText: "select gold bar weight",
        onSelected: (value) {
          amount = value!.toDouble();
        },
        dropdownMenuEntries: const [
          DropdownMenuEntry(
            label: "golden pound",
            value: 8 * (21 / 24),
          ),
          DropdownMenuEntry(
            label: "1  g",
            value: 1.0,
          ),
          DropdownMenuEntry(
            label: "2.5  g",
            value: 2.5,
          ),
          DropdownMenuEntry(
            label: "5.0  g",
            value: 5.0,
          ),
          DropdownMenuEntry(
            label: "10  g",
            value: 10.0,
          ),
          DropdownMenuEntry(
            label: "20  g",
            value: 20,
          ),
          DropdownMenuEntry(
            label: "50  g",
            value: 50.0,
          ),
          DropdownMenuEntry(
            label: "100  g",
            value: 100,
          ),
          DropdownMenuEntry(
            label: "250  g",
            value: 250.0,
          ),
        ]);
  }
}
