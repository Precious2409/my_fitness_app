import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_fitness_app/common/colo_extension.dart';
import 'package:my_fitness_app/home/home_container.dart';
import 'package:my_fitness_app/profile/profile_avatar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: Icon(
                      Icons.waving_hand_rounded,
                    color: Colors.yellow.shade600
                  ),
                  title: Text(
                    "Welcome back, Sarah!",
                    style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w600,
                        color: TColor.primaryColor1
                    ),),
                  trailing: ProfileAvatar(rad: 25.r),
                ),

                SizedBox(height: 15.h,),

                Text(
                  "Today's activity",
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w500,
                    color: TColor.primaryColor1
                  ),
                ),

                Text(
                  "Here's a snapshot of your fitness journey",
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: TColor.primaryColor1
                  ),
                ),

                SizedBox(height: 10.h,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    HomeContainer(),
                    HomeContainer(),
                    HomeContainer(),
                  ],
                ),
                SizedBox(height: 10,),

                ListTile(
                  leading: Text(
                    "Today's activity",
                    style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                        color: TColor.primaryColor1
                    ),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios_rounded),
                ),

                SizedBox(height: 10,),

                Container(
                  width: 358.w,
                  height: 112.h,
                  child: Card(
                    color: Color(0xff4F9D5B),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                  "Waist Workout",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16.sp,
                                color: Colors.white
                              ),
                              ),

                              SizedBox(width: MediaQuery.of(context).size.width * 0.25),

                              ElevatedButton(
                                  onPressed: (){},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(17)
                                    )
                                  ),
                                  child: Text(
                                      "Continue",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16.sp,
                                        color: Colors.green
                                    ),
                                  )
                              )
                            ],
                          ),

                          SizedBox(height: 10,),

                          Text(
                              "25% Completed",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16.sp,
                                color: Colors.white
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 10,),


              ],
            ),
          ),
        ),
      ),
    );
  }
}

