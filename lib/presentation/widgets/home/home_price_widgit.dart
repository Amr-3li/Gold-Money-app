import 'package:flutter/material.dart';

class HomePriceWidget extends StatelessWidget {
  const HomePriceWidget({
    super.key,
    required this.text,
    required this.price,
    required this.date,
    this.image,
  });
  final String text, price, date;
  final String? image;
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
            image == null
                ? Container()
                : Align(
                    alignment: Alignment.topRight,
                    child: ClipOval(
                      child: Image.asset(
                        image!,
                        width: 30,
                        height: 30,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
            const SizedBox(height: 10),
            Row(
              children: [
                Text(
                  text,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 255, 253, 250),
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                ),
                Expanded(
                  child: Text(price,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 255, 253, 250),
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "updated at : ${date}",
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
