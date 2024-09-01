import 'package:flutter/material.dart';

class HomeTextWidget extends StatelessWidget {
  const HomeTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Expanded(
        child: Text(
          "hello , welcome to gold price app",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: const Color.fromARGB(255, 9, 241, 0).withOpacity(0.4),
          ),
          overflow: TextOverflow.ellipsis,
          maxLines: 3,
        ),
      ),
    );
  }
}
