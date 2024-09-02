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
          image: DecorationImage(
              filterQuality: FilterQuality.low,
              image: AssetImage(image),
              fit: BoxFit.fill,
              opacity: 0.5),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
              color: const Color.fromARGB(255, 150, 150, 150), width: 2),
          color: const Color.fromARGB(255, 148, 94, 1).withOpacity(0.5),
        ),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
