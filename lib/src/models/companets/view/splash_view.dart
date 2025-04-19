import 'dart:async';
import 'package:flutter/material.dart';
import 'package:home2/src/models/companets/view/home_view.dart';
import 'package:home2/src/models/companets/view/onboarding_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), _onBordingSplach);
  }

  Future<void> _onBordingSplach() async {
    final prefs = await SharedPreferences.getInstance();
    final seen = prefs.getBool('onboarding_seen') ?? false;
    if (seen) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomeView()));
    } else {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => OnboardingView()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 270,
            ),
            Image.asset('assets/images/Logo.png'),
            SizedBox(
              height: 250,
            ),
            Text(
              'BrainBox',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              'Version 10',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
