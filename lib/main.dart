import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_fitness_app/common/colo_extension.dart';
import 'package:my_fitness_app/onboarding/splash_screen.dart';


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
        home: const SplashScreen(),
       /** routes: {
          "/signuppage": (context) => const SignupScreen(),
          "/aboutyoupage": (context) => const AboutYou(),
          "/fitnessgoalspage": (context) => const FitnessGoals(),
          "/activitylevel": (context) => const ActivityLevelCheck(),

        },**/
      ),
    );
  }
}
