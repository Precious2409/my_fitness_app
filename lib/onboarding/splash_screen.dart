import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_fitness_app/common/colo_extension.dart';
import 'package:my_fitness_app/onboarding/welcome_onboard.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return AnimatedSplashScreen(
      splash: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
          children:[
            SizedBox(
              child: Image.asset(
                "assets/images/vector.png",
                width: 260,
                height: 260,
              ),
            ),
             Text(
              "My Fitness App",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 40.sp,
                color: Color(0xff151222),
              ),
            )
          ]
      ),
      backgroundColor: TColor.primaryColor3,
      nextScreen: const WelcomeOnboard(),
      splashIconSize: 240,
      splashTransition: SplashTransition.fadeTransition,
      duration: 1800,
    );
  }
}
