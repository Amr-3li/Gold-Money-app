import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shadowColor: const Color.fromARGB(255, 151, 101, 2),
      elevation: 15,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(30),
        ),
      ),
      title: const Text(
        'Gold',
        style: TextStyle(
            color: Color.fromARGB(255, 151, 101, 2),
            fontWeight: FontWeight.bold,
            fontSize: 30),
      ),
      centerTitle: true,
    );
  }
}
