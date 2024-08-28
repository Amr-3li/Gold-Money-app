import 'package:flutter/material.dart';
import 'package:gold/Consts/home_list.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: const DecorationImage(
            image: AssetImage("assets/Images/goldimage.jpg"),
            fit: BoxFit.fill,
            opacity: 0.7),
        gradient: LinearGradient(
          colors: [
            const Color.fromARGB(255, 151, 101, 2).withOpacity(0.9),
            const Color.fromARGB(255, 255, 255, 255).withOpacity(0.9),
          ],
          stops: const [0.1, 0.9],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GridView.builder(
            padding: const EdgeInsets.all(20),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: 4,
            itemBuilder: (BuildContext context, int index) {
              return HomeGridItem(item: homeList[index]);
            },
          ),
        ],
      ),
    );
  }
}

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
          color: Colors.amber.withOpacity(0.5),
        ),
        child: Column(
          children: [
            Image.asset(item['image'], height: 100, width: 100),
            Text(item['title'], textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
