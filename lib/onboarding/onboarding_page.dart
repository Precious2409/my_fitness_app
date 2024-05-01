import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_fitness_app/common/colo_extension.dart';


class OnboardingPage extends StatelessWidget {

  const OnboardingPage(
      {
        super.key,
        required this.image,
        required this.title, required this.subtitle,});

  final String image;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {

    var media = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
          decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(10.r),
              image: DecorationImage(
                image: AssetImage(
                  image,
                ),
                fit: BoxFit.cover,
              )
          ),

        padding: EdgeInsets.all(20),
        child: Container(
          margin: EdgeInsets.only(top: 350.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                    color: TColor.white,
                    fontSize: 40.sp,
                    fontWeight: FontWeight.w700
                ),
              ),

              SizedBox(height: 10,),

              Text(
                subtitle,
                style: TextStyle(
                    color: TColor.white,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}

/**return Scaffold(
    body: Stack(
    children: [
    Container(
    ,
    ),
    Scaffold(
    backgroundColor: Colors.transparent,
    body: Column(
    children: [
    Align(
    alignment: Alignment.topRight,
    child:
    SizedBox(height: 520.h),
    Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    ],
    ),
    ],
    ),
    ),
    ],
    ),
    );
    }**/
