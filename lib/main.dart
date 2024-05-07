import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_fitness_app/common/colo_extension.dart';
import 'package:my_fitness_app/create_account/create_account.dart';
import 'package:my_fitness_app/explore/explore_page.dart';
import 'package:my_fitness_app/home/home_view.dart';
import 'package:my_fitness_app/home/prologin_scaffold.dart';
import 'package:my_fitness_app/knowing_you/about_you.dart';
import 'package:my_fitness_app/knowing_you/activity_level_check.dart';
import 'package:my_fitness_app/knowing_you/fitness_goals.dart';
import 'package:my_fitness_app/onboarding/onboarding_screen_1.dart';
import 'package:my_fitness_app/onboarding/splash_screen.dart';
import 'package:my_fitness_app/sign_up/signup_screen.dart';

import 'onboarding/onboarding_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        title: 'My Fitness App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: TColor.primaryColor3,
          fontFamily: "Lato" ,
          useMaterial3: false,
        ),
        home:  SplashScreen(),
        routes: {
          "/signuppage": (context) => const SignupScreen(),
          "/aboutyoupage": (context) => const AboutYou(),
          "/homeview": (context) => const HomeView(),
          "/onboardingscreen": (context) => const OnboardingScreen(),
          "/fitnessgoalspage": (context) => const FitnessGoals(),
          "/activitylevel": (context) => const ActivityLevelCheck(),
          "/createaccount":(context)=> const CreateAccount(),
          "/explorepage": (context)=> const ExplorePage(),
          "/prologinscaffold":(context)=> const ProloginScaffold(),

        },
      ),
    );
  }
}
