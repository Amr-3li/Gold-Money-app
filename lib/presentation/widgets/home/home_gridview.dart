import 'package:flutter/material.dart';
import 'package:gold/Consts/home_list.dart';
import 'package:gold/presentation/widgets/home/home_grid_item.dart';

class HomeGrideView extends StatelessWidget {
  const HomeGrideView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(20),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: homeList.length,
      itemBuilder: (BuildContext context, int index) {
        return HomeGridItem(item: homeList[index]);
      },
    );
  }
}

