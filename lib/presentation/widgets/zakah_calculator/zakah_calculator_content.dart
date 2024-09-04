import 'package:flutter/material.dart';
import 'package:gold/presentation/widgets/Input_text.dart';
import 'package:gold/presentation/widgets/zakah_calculator/result_text.dart';
import 'package:gold/presentation/widgets/zakah_calculator/zakah_information.dart';

class ZakahCalculatorContent extends StatefulWidget {
  const ZakahCalculatorContent({super.key, required this.goldprice});
  final double goldprice;

  @override
  State<ZakahCalculatorContent> createState() => _ZakahCalculatorContentState();
}

class _ZakahCalculatorContentState extends State<ZakahCalculatorContent> {
  TextEditingController controller = TextEditingController();

  int caliber = 24;
  double result = 0;
  double zakahCalculator() {
    int amount = int.parse(controller.text);
    if (caliber == 24 && amount >= 85) {
      result = amount * (widget.goldprice / 31.1034) * (2.5 / 100);
    } else if (caliber == 21 && amount > 97) {
      result =
          ((amount * 21) / 24) * (widget.goldprice / 31.1034) * (2.5 / 100);
    } else if (caliber == 18 && amount > 113) {
      result =
          ((amount * 18) / 24) * (widget.goldprice / 31.1034) * (2.5 / 100);
    } else if (caliber == 16 && amount > 127) {
      result =
          ((amount * 16) / 24) * (widget.goldprice / 31.1034) * (2.5 / 100);
    } else {
      result = -1;
    }

    return result;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Container(
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
            Center(
              child: ElevatedButton(
                style: const ButtonStyle(
                  fixedSize: WidgetStatePropertyAll(Size(300, 40)),
                  backgroundColor: WidgetStatePropertyAll(
                    Color.fromARGB(152, 164, 121, 1),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    result = zakahCalculator();
                  });
                },
                child: const Text("Calculate",
                    style: TextStyle(fontSize: 15, color: Colors.white)),
              ),
            ),
            const SizedBox(height: 20),
            result == 0
                ? Container()
                : result == -1
                    ? const ResultText(
                        result: " لم يبلغ حد الزكاه",
                      )
                    : ResultText(
                        result:
                            "Zakah : ${zakahCalculator().toString().substring(0, 8)}  EGP",
                      ),
            const SizedBox(height: 20),
            const ZakahInformation()
          ],
        ),
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
          value: 21,
          child: Text("21K"),
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
        caliber = value!;
      },
    );
  }
}
