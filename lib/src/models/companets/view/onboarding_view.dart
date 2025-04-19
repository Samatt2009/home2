import 'package:flutter/material.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  final List<Map<String, String>> pages = [
    {
      'image': 'assets/images/Robot Image (1).png',
      'title': 'Unlock the Power\n Of  Future AI',
      'subtitle':
          'Chat with the smartest AI Future\nExperience power of AI with us'
    },
    {
      'image': 'assets/images/Robot Image (1).png',
      'title': '   Chat With Your\n Favourite Ai',
      'subtitle':
          'Chat with the smartest AI Future\nExperience power of AI with us'
    },
    {
      'image': 'assets/images/Robot Image (1).png',
      'title': 'Boost Your Mind\n Power with Ai',
      'subtitle':
          'Chat with the smartest AI Future\nExperience power of AI with us'
    },
  ];

  void _nextpage() {
    if (_currentIndex < pages.length - 1) {
      _pageController.nextPage(
        duration: Duration(microseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _prevPage() {
    if (_currentIndex > 0) {
      _pageController.previousPage(
        duration: Duration(microseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff141718),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Text(
                'Skip',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
