import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget(
      {super.key, required this.onItemTapped, required this.selectedIndex});
  final void Function(int)? onItemTapped;
  final int selectedIndex ;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: const Color.fromARGB(255, 148, 96, 0),
      ),
      height: 60,
      child: Align(
        alignment: AlignmentDirectional.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: GNav(
            selectedIndex: selectedIndex,
            onTabChange: onItemTapped,
            tabBorderRadius: 25,
            gap: 5,
            tabActiveBorder: Border.all(
                color: const Color.fromARGB(255, 244, 243, 243), width: 3),
            rippleColor: const Color.fromARGB(255, 244, 244, 244),
            activeColor: const Color.fromARGB(255, 255, 255, 255),
            color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.6),
            backgroundColor: Colors.transparent,
            iconSize: 24,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
            tabs: const [
              GButton(
                  icon: Icons.home,
                  text: 'Home',
                  textColor: Color.fromARGB(255, 255, 255, 255)),
              GButton(
                icon: Icons.attach_money_rounded,
                text: 'gold price',
                textColor: Color.fromARGB(255, 255, 255, 255),
              ),
              GButton(
                  icon: Icons.currency_exchange,
                  text: 'Currencies',
                  textColor: Color.fromARGB(255, 255, 255, 255)),
              GButton(
                  icon: Icons.calculate,
                  iconSize: 25,
                  text: 'Zakah',
                  textColor: Color.fromARGB(255, 255, 255, 255)),
            ],
          ),
        ),
      ),
    );
  }
}
