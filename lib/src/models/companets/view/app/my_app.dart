import 'package:flutter/material.dart';
import 'package:home2/src/models/companets/view/splash_view.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashView(),
    );
  }
}
