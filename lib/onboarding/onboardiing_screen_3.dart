import 'package:flutter/material.dart';
import 'package:my_fitness_app/onboarding/onboarding_page.dart';

class OnboardingScreen3 extends StatefulWidget {
  const OnboardingScreen3({super.key});

  @override
  State<OnboardingScreen3> createState() => _OnboardingScreen3State();
}

class _OnboardingScreen3State extends State<OnboardingScreen3> {
  @override
  Widget build(BuildContext context) {
    return const OnboardingPage(
        image: "assets/images/nourish_your_body.png",
        title: "Nourish Your Body",
        subtitle: "Explore local recipes and meal plans tailored to your fitness goals"
    );
  }
}
