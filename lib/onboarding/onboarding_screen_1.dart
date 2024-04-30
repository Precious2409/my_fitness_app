import 'package:flutter/material.dart';
import 'package:my_fitness_app/onboarding/onboarding_page.dart';

class OnboardingScreen1 extends StatefulWidget {
  const OnboardingScreen1({super.key});

  @override
  State<OnboardingScreen1> createState() => _OnboardingScreen1State();
}

class _OnboardingScreen1State extends State<OnboardingScreen1> {
  @override
  Widget build(BuildContext context) {
    return const OnboardingPage(
      image: "assets/images/unlock_your_potential.png",
      title: 'Unlock Your Potential',
      subtitle: 'Get access to well curated workout routines for a stronger,healthier you',
    );
  }
}
