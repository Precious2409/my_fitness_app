import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_fitness_app/common/colo_extension.dart';
import 'package:my_fitness_app/common/common_widgets/button_elevation.dart';

class WelcomeOnboard extends StatelessWidget {
  const WelcomeOnboard({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/nourish_your_body.png",
                ),
                fit: BoxFit.cover,
              )
          ),
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
             Container(
               margin: EdgeInsets.only(top: 350.h),
               child: Column(
                 children: [
                   Text(
                     "Welcome to My Fitness App",
                     style: TextStyle(
                         fontSize: 40.sp,
                         fontWeight: FontWeight.w400,
                         fontFamily: "Lato",
                         color: Colors.white
                     ),
                   ),

                   SizedBox(height: 10.h,),

                   Text(
                     "Your one stop destination for all things"
                         " fitness and nutrition. Get ready to"
                         " embark on a journey towards a"
                         " healthier happier you.",
                     style: TextStyle(
                       fontWeight: FontWeight.w500,
                       fontSize: 20.sp,
                       color: Colors.white,
                     ),
                   ),

                 ],
               ),
             ),

              SizedBox(height: 10.h,),

              ButtonElevation(
                  onPressed: (){
                    Navigator.pushNamed(context, "/onboardingscreen");
                  },
                  btnText: "Get Started",
                btnColor: TColor.primaryColor1,
              ),

              SizedBox(height: 10.h,),

              ButtonElevation(
                  onPressed: (){},
                  btnText: "Login",
                btnColor: TColor.primaryColor1,
              ),
            ]
          ),
        ),
      ),
    );
  }
}
