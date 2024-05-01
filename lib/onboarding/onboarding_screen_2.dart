import 'package:flutter/material.dart';
import 'package:my_fitness_app/onboarding/onboarding_page.dart';

class OnboardingScreen2 extends StatefulWidget {
  const OnboardingScreen2({super.key});

  @override
  State<OnboardingScreen2> createState() => _OnboardingScreen2State();
}

class _OnboardingScreen2State extends State<OnboardingScreen2> {
  @override
  Widget build(BuildContext context) {
    return OnboardingPage(
     image: 'assets/images/embrace_vitality.png',
      title: 'Embrace Vitality',
      subtitle: 'Embrace a healthier lifestyle, discover the power of active living',
    );
  }
}
