import 'package:flutter/material.dart';
import 'package:gold/presentation/widgets/Input_text.dart';

class ZakahCalculatorContent extends StatefulWidget {
  const ZakahCalculatorContent({super.key, required this.goldprice});
  final double goldprice;

  @override
  State<ZakahCalculatorContent> createState() => _ZakahCalculatorContentState();
}

class _ZakahCalculatorContentState extends State<ZakahCalculatorContent> {
  TextEditingController controller = TextEditingController();
  int caliber = 0;
  double zakahCalculator() {
    return widget.goldprice * 0.05;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Align(
            alignment: Alignment.center,
            child: Flexible(
              child: Text("hello , welcome to zakah calculator",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 9, 241, 0)),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "set amount of gold per Gram",
            style: TextStyle(fontSize: 15),
          ),
          const SizedBox(height: 10),
          TextInputData(
            text: "Gold",
            controller: controller,
          ),
          const SizedBox(height: 20),
          const Text(
            "Select Caliber of gold",
            style: TextStyle(fontSize: 15),
          ),
          const SizedBox(height: 10),
          dropDownList(),
          const SizedBox(height: 20),
          ElevatedButton(
            style: const ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(
                Color.fromARGB(255, 9, 241, 0),
              ),
            ),
            onPressed: () {},
            child: const Text("Calculate"),
          )
        ],
      ),
    );
  }

  DropdownButton<int> dropDownList() {
    return DropdownButton(
      menuWidth: double.infinity,
      isDense: true,
      value: caliber,
      isExpanded: true,
      icon: const Icon(Icons.keyboard_arrow_down),
      style: const TextStyle(color: Colors.white, fontSize: 15),
      dropdownColor: const Color.fromARGB(180, 158, 100, 0),
      hint: const Text("Select Caliber of gold"),
      items: const [
        DropdownMenuItem(
          value: 24,
          child: Text("24K"),
        ),
        DropdownMenuItem(
          value: 22,
          child: Text("22K"),
        ),
        DropdownMenuItem(
          value: 18,
          child: Text("18K"),
        ),
        DropdownMenuItem(
          value: 16,
          child: Text("16K"),
        ),
      ],
      onChanged: (value) {
        setState(() {
          caliber = value!;
        });
      },
    );
  }
}
