import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_fitness_app/common/colo_extension.dart';
import 'package:my_fitness_app/common/common_widgets/button_elevation.dart';
import 'package:my_fitness_app/common/common_widgets/form_widget.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  IconButton(
                    icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                      size: 24
                    ) ,
                    onPressed: () {},
                  ),
                  Text(
                    "Sign Up",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 24.sp
                    ),
                  ),
                  SizedBox(height: 10.h,),
                  Text(
                      "Start your fitness journey by creating your Fitness account",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16.sp
                    ),
                  ),
                 SizedBox(height: 20.h,),

                  FormWidget(
                    title: 'Name',
                    hintText: 'Enter your full name',
                    textInputType: TextInputType.text,
                    obscureText: false,
                  ),

                  SizedBox(height: 10.h,),

                  FormWidget(
                    title: 'Email Address',
                    hintText: 'Enter your email address',
                    textInputType: TextInputType.emailAddress,
                    obscureText: false,
                  ),

                  SizedBox(height: 10.h,),

                  FormWidget(
                    title: 'Password',
                    hintText: 'Create a secure password', textInputType:
                  TextInputType.visiblePassword,
                    obscureText: true,
                  ),

                  SizedBox(height: 10.h,),

                  FormWidget(
                    title: 'Confirm Password',
                    hintText: 'Re-enter your password', textInputType:
                  TextInputType.visiblePassword,
                    obscureText: true,
                  ),

                  SizedBox(height: 10.h,),

                  Row(
                    children: [
                      Checkbox(
                          value: isChecked,
                          onChanged: (newBool){
                            setState(() {
                              isChecked = newBool;
                            });
                          },
                          activeColor: TColor.black
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "By creating an account,",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16.sp
                            ),
                          ),
                          Text(
                            "you agree to our Terms of Service",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16.sp
                            ),
                          ),
                          Text(
                            "and acknowledge our Privacy Policy",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16.sp
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h,),

                  ButtonElevation(
                      btnText: "Sign Up",
                      onPressed: (){
                        Navigator.pushNamed(context, "/explorepage");
                      }
                  ),

                  SizedBox(height: 10.h,),

                  Center(
                    child: RichText(
                      textAlign: TextAlign.center,
                        text: TextSpan(
                            style: TextStyle(
                                color: TColor.black,
                                fontSize: 14.sp
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                  text: "Already have an account?"
                              ),
                              TextSpan(
                                  text: "Login Now",
                                  style: TextStyle(
                                    color: Colors.red,
                                  )
                              )
                            ]
                        )
                    ),
                  )
                ]
              ),
            ],
          ),
        )
      ),
    );
  }
}
