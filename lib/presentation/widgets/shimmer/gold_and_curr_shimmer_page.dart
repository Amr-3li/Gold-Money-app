import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerGoldAndCurrenciesPage extends StatelessWidget {
  const ShimmerGoldAndCurrenciesPage({
    super.key,
    required this.hight,
  });

  final double hight;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: Colors.grey.withOpacity(0.3),
        highlightColor: const Color.fromARGB(255, 213, 213, 213),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Container(
              height: hight / 10,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.amber, borderRadius: BorderRadius.circular(20)),
            ),
            const SizedBox(
              height: 20
            ),
            Container(
              height: hight / 2,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.amber, borderRadius: BorderRadius.circular(20)),
            ),
          ],
        ));
  }
}
