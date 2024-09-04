import 'package:flutter/material.dart';

class ResultText extends StatelessWidget {
  const ResultText({
    super.key,
    required this.result,
    this.color,
  });
  final String result;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(
              color: color == null
                  ? const Color.fromARGB(255, 47, 163, 51)
                  : color!,
              width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          " $result ",
          style: TextStyle(
              fontSize: 25,
              color: color == null
                  ? const Color.fromARGB(255, 47, 163, 51)
                  : color!,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
