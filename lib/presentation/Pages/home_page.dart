import 'package:flutter/material.dart';
import 'package:gold/presentation/widgets/home/home_appbar.dart';
import 'package:gold/presentation/widgets/home/home_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60), child: HomeAppBar()),
      body: HomeBody(),
    );
  }
}
