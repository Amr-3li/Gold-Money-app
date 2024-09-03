import 'package:flutter/material.dart';

class ResultText extends StatelessWidget {
  const ResultText({
    super.key,
    required this.result,
  });
  final String result;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(
              color: const Color.fromARGB(255, 47, 163, 51), width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          "Zakah : $result EGP",
          style: const TextStyle(
              fontSize: 25,
              color: Color.fromARGB(255, 47, 163, 51),
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
