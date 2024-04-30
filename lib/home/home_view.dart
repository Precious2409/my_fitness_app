import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_fitness_app/common/colo_extension.dart';
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
                  trailing: ProfileAvatar(),
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
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 108.h,
                      width: 108.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        color: TColor.primaryColor3
                      ),
                      child: Container(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ImageIcon(
                                size: 24.88,
                                AssetImage(
                                "assets/images/location.png",
                            )
                            ),
                            SizedBox(height: 10,),
                            Text(
                                "30mins",
                              style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w600,
                                  color: TColor.primaryColor1
                              ) ,
                            ),
                            SizedBox(height: 8,),
                            Text(
                              "Workout Completed",
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                  color: TColor.primaryColor1
                              ) ,
                            ),

                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),

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

                SizedBox(height: 20,),

                Container(
                  width: 358.w,
                  height: 97.h,
                  child: Card(
                    color: Colors.greenAccent,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Padding(
                      padding: EdgeInsets.all(12),
                      child: Column(
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
