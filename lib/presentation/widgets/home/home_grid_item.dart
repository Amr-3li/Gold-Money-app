import 'package:flutter/material.dart';

class HomeGridItem extends StatelessWidget {
  const HomeGridItem({
    super.key,
    required this.item,
  });
  final Map<String, dynamic> item;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: item['route'],
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.black, width: 2),
          color: const Color.fromARGB(255, 148, 94, 1).withOpacity(0.5),
        ),
        child: Column(
          children: [
            const Spacer(flex: 1),
            Image.asset(
              item['icon'],
              height: 70,
              width: 70,
              color: const Color.fromARGB(255, 255, 253, 250),
            ),
            const Spacer(flex: 1),
            Text(
              item['title'],
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
