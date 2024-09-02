import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class SimmerGoldPage extends StatelessWidget {
  const SimmerGoldPage({
    super.key,
    required this.hight,
  });

  final double hight;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: Colors.grey.withOpacity(0.3),
        highlightColor: const Color.fromARGB(255, 213, 213, 213),
        child: Container(
          height: hight / 2,
          width: double.infinity,
          color: Colors.amber,
        ));
  }
}
