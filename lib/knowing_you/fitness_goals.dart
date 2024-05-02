import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_fitness_app/common/common_widgets/button_elevation.dart';
import 'package:my_fitness_app/common/common_widgets/button_outlined.dart';
import 'package:my_fitness_app/common/common_widgets/list_tile_lead.dart';

class FitnessGoals extends StatefulWidget {
  const FitnessGoals({super.key});

  @override
  State<FitnessGoals> createState() => _FitnessGoalsState();
}

class _FitnessGoalsState extends State<FitnessGoals> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // ignore: prefer_const_constructors
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
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
                      "Tell Us Your Fitness Goals",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 24.sp,
                        color: Colors.black
                    ),
                  ),

                  SizedBox(height: 10.h,),

                  Text(
                      "What are your primary fitness objectives? Let us"
                          "know your goals and we'll help you reach them!",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16.sp,
                        color: Colors.black
                    ),
                  ),

                  SizedBox(height: 20.h,),

                  Text(
                      "What are your primary fitness goals?",
                      style:TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16.sp,
                          color: Colors.black
                      )
                  ),

                  ListTileLead(
                    title: "Lose weight",
                    onClicked: () {  },
                    conWidth: MediaQuery.of(context).size.width,
                  ),

                  SizedBox(height: 10.h,),

                  ListTileLead(
                    title: "Gain Muscle",
                    onClicked: () {  },
                    conWidth: MediaQuery.of(context).size.width,
                  ),

                  SizedBox(height: 10.h,),

                  ListTileLead(
                    title: "Keep Fit",
                    onClicked: () {  },
                    conWidth: MediaQuery.of(context).size.width,
                  ),

                  SizedBox(height: 10.h,),

                  ListTileLead(
                    title: "Get Stronger",
                    onClicked: () {  },
                    conWidth: MediaQuery.of(context).size.width,
                  ),

                  SizedBox(height: 15,),

                  Text(""),

                  SizedBox(height: 20.h,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ButtonOutlined(
                        label: "Chest",
                        btnWidth: 50,
                        onPressed: (){},
                      ),
                      ButtonOutlined(
                        label: "Back",
                        btnWidth: 50,
                        onPressed: (){},
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ButtonOutlined(
                        label: "Shoulder",
                        btnWidth: 50,
                        onPressed: (){},
                      ),
                      ButtonOutlined(
                        label: "Arms",
                        btnWidth: 50,
                        onPressed: (){},
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ButtonOutlined(
                        label: "Abdomen",
                        btnWidth: 50,
                        onPressed: (){},
                      ),
                      ButtonOutlined(
                        label: "Legs",
                        btnWidth: 50,
                        onPressed: (){},
                      ),
                    ],
                  ),

                  ButtonElevation(
                      onPressed: (){},
                      btnText: "Continue"
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
