import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_fitness_app/common/common_widgets/button_elevation.dart';


class ActivityLevelCheck extends StatefulWidget {
  const ActivityLevelCheck({super.key});

  @override
  State<ActivityLevelCheck> createState() => _ActivityLevelCheckState();
}

class _ActivityLevelCheckState extends State<ActivityLevelCheck> {

  int? _value = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                        size: 24
                    ) ,
                    onPressed: () {},
                  ),
                  Text(
                    "Help us understand your typical "
                        "activity level",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 24.sp,
                        color: Colors.black
                    ),
                  ),

                  SizedBox(height: 10.h,),

                  Text(
                    "Understanding your activity level helps us tailor workouts to match your lifestyle and energy needs",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16.sp,
                        color: Colors.black
                    ),
                  ),

                  SizedBox(height: 20),

                  Text(
                    "How would you describe your activity level?",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16.sp,
                        color: Colors.black
                    ),
                  ),

                  SizedBox(height: 10.h,),

                  Row(
                    children: [
                      Radio(
                          value: 1,
                          groupValue: _value,
                          onChanged: (value){},
                          activeColor: Colors.black
                      ),



                      Text(
                          "Sedentary(little to no exercise)",
                      style:TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16.sp,
                          color: Colors.black
                      )
                      ),
                    ],
                  ) ,

                  SizedBox(height: 10.h,),

                  Row(
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

                      Text(
                          "Lightly active (light exercise/sports 1-3 days a week)",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16.sp,
                            color: Colors.black
                        ),
                      ),
                    ],
                  ) ,

                  SizedBox(height: 10,),

                  Row(
                    children: [
                      Radio(
                        value: 2,
                        groupValue: _value,
                        onChanged: (value){
                          setState(() {
                            _value = value;
                          });
                        },
                        activeColor: Colors.black ,
                      ),
                      Text(
                          "Moderately active (moderate exercise/"
                              "sports 3 - 5 days a week)",
                        style:TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16.sp,
                            color: Colors.black
                        )
                      ),

                      Text(
                          "Very active (hard exercise/"
                              "sports 6 - 7 days a week)",
                          style:TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16.sp,
                              color: Colors.black
                          )
                      ),

                      Text(
                          "Extremely active (very hard exercise/"
                              "sports & physical job or 2x training)",
                          style:TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16.sp,
                              color: Colors.black
                          )
                      ),
                    ],
                  ),

                  SizedBox(height: 10,),

                  ButtonElevation(
                      onPressed: (){},
                      btnText: "Continue"
                  )
                ],
              ),
            ],
          ),
        )
    );

  }
}
