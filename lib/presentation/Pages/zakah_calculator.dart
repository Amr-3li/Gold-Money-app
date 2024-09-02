import 'package:flutter/material.dart';

class ZakahCalculator extends StatelessWidget {
  const ZakahCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Zakah Calculator"),
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/Images/background/mosque.jpg"),
          filterQuality: FilterQuality.low,
          fit: BoxFit.fill,
          opacity: 0.5,
        )),
      ),
    );
  }
}
