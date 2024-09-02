import 'package:flutter/material.dart';

class BullionCalculator extends StatelessWidget {
  const BullionCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bullion Calculator"),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/Images/background/gold-bars.jpg"),
            filterQuality: FilterQuality.low,
            fit: BoxFit.fill,
            opacity: 0.5,
          ),
        ),
      ),
    );
  }
}
