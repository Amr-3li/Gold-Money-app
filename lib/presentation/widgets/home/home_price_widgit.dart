import 'package:flutter/material.dart';

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
                style: const TextStyle(
                  color: Color.fromARGB(255, 255, 253, 250),
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
