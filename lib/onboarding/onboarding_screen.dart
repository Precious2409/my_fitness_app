import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_fitness_app/common/colo_extension.dart';
import 'package:my_fitness_app/onboarding/onboardiing_screen_3.dart';
import 'package:my_fitness_app/onboarding/onboarding_page.dart';
import 'package:my_fitness_app/onboarding/onboarding_screen_1.dart';
import 'package:my_fitness_app/onboarding/onboarding_screen_2.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen>{
  int selectedPage = 0;
  PageController controller = PageController();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          child: Stack(
              children: [
                Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:[

                  PageView(
                    controller: controller,
                    children: [
                      OnboardingScreen1(),
                      OnboardingScreen2(),
                      OnboardingScreen3(),
                    ],
                  ),
                  SmoothPageIndicator(
                    axisDirection: Axis.horizontal,
                    controller: controller,
                    count: 3,
                    effect: ExpandingDotsEffect(
                        dotColor: Colors.transparent,
                        activeDotColor: Colors.white,
                        dotHeight: 8.h,
                        dotWidth: 24.w,


                    ),
                  ),


                ]
              ),
            ]
            )
      ),
    );
  }
}


