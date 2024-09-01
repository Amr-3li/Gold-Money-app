import 'package:flutter/material.dart';

class HomeItemPage extends StatelessWidget {
  const HomeItemPage({
    super.key,
    required this.image,
    required this.title,
    required this.route,
  });
  final String image, title;
  final Function() route;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: route,
      child: Container(
        width: double.infinity,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.black, width: 2),
          color: const Color.fromARGB(255, 148, 94, 1).withOpacity(0.5),
        ),
        child: Column(
          children: [
            const Spacer(flex: 1),
            Image.asset(
              image,
              height: 70,
              width: 70,
              color: const Color.fromARGB(255, 255, 253, 250),
            ),
            const Spacer(flex: 1),
            Text(
              title,
              style: const TextStyle(
                color: Color.fromARGB(255, 255, 253, 250),
                fontSize: 15,
              ),
            ),
            const Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}
