import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_fitness_app/common/common_widgets/button_elevation.dart';
import 'package:my_fitness_app/common/common_widgets/form_widget.dart';


class AboutYou extends StatefulWidget {
  const AboutYou({super.key});

  @override
  State<AboutYou> createState() => _AboutYouState();
}

class _AboutYouState extends State<AboutYou> {
  int? _value = 1;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children:[
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
                    "Help Us Get to Know You",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 24.sp,
                      color: Colors.black
                    ),
                  ),
                  SizedBox(height: 10.h,),
                  Text(
                    "Your journey begins here! Please provide some"
                        " basic details to personalize your experience.",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16.sp,
                        color: Colors.black
                    ),
                  ),
                  SizedBox(height: 20.h,),

                  Text(
                    "Select your gender",
                    style:TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp,
                        color: Colors.black
                    )
                  ),
                  Text(
                      "This helps us to estimate your body's metabolic rate",
                      style:TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                          color: Colors.black45
                      )
                  ),
                  Row(
                    children: [
                      Radio(
                          value: 1,
                          groupValue: _value,
                          onChanged: (value){},
                          activeColor: Colors.black
                      ),

                      SizedBox(width: 10,),

                      Text("Female"),
                    ],
                  ),

                  SizedBox(height: 10,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Radio(
                          value: 2,
                          groupValue: _value,
                          onChanged: (value){
                            setState(() {
                              _value = value;
                            });
                          },
                          activeColor: Colors.black
                      ),
                      SizedBox(width: 10,),

                      Text("Male"),
                    ],
                  ),

                  FormWidget(
                    title: 'Enter your age',
                    hintText: 'Type your age',
                    textInputType: TextInputType.text,
                    obscureText: false,
                  ),



                  SizedBox(height: 20,),


                  ButtonElevation(
                      onPressed: (){
                        Navigator.pushNamed(context, "/fitnessgoalspage");
                      },
                      btnText: "Continue"
                  )
                ]
              )
            ]
          ),
        )
      ),
    );
  }
}
