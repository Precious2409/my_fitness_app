import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_fitness_app/common/colo_extension.dart';
import 'package:my_fitness_app/common/common_widgets/button_elevation.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back_ios) ,
                onPressed: () {},
              ),
              
              Text(
                "Create Your Account",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 24.sp,
                    color: Colors.black),
              ),

              SizedBox(height: 10.h,),

              Text(
                "Start your fitness journey by creating a Fitness Account. "
                    "Fill in your details below to get started ",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                    color: Colors.black
                ),
              ),

              SizedBox(height: 20.h),
      
              Center(
                  child: ButtonElevation(
                    onPressed: (){
                      Navigator.pushNamed(context, "/signuppage");
                    }, btnText: 'Sign Up',
                  )
              ),
      
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(child: Text("OR")),
              ),
      
              OutlinedButton.icon(
                onPressed: (){},
                icon: Image.asset(
                    "assets/images/googleimg.png",
                width: 24.w,
                  height: 24.h
                ),
                label: Text("Sign Up with Google"),
                style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7.r) ),
                    backgroundColor: Colors.white,
                    foregroundColor: TColor.black,
                    minimumSize: Size(MediaQuery.of(context).size.width, 48.h),
                    textStyle: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    )
                ),
      
              ),
      
              SizedBox(height: 15.h,),
      
              OutlinedButton.icon(
                onPressed: (){},
                icon: Icon(Icons.email_outlined),
                label: Text("Sign Up with Email"),
                style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7.r) ),
                    backgroundColor: Colors.white,
                    foregroundColor: TColor.black,
                    minimumSize: Size(MediaQuery.of(context).size.width, 48.h),
                    textStyle: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    )
                ),
              ),
              SizedBox(height: 20.h,),
      
              Center(
                child: TextButton(
                  onPressed: (){},
                  child: RichText(
                      text: TextSpan(
                          style: TextStyle(
                              color: TColor.black,
                              fontSize: 16.sp
                          ),
                          children: <TextSpan>[
                            TextSpan(
                                text: "Already have an account? "
                            ),
                            TextSpan(
                                text: "Login here",
                                style: TextStyle(
                                  color: Colors.red,
                                )
                            )
                          ]
                      )
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
