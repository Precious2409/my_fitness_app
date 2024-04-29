import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_fitness_app/common/colo_extension.dart';


class OnboardingPage extends StatelessWidget {
  final Map pObj;
  const OnboardingPage({super.key, required this.pObj,});



  @override
  Widget build(BuildContext context) {

    var media = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                pObj["image"].ToString(),
              ),
              fit: BoxFit.cover,
            )
        ),
        child: SizedBox(
          width: media.width,
          height: media.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Padding(
                padding: EdgeInsets.symmetric(vertical: 352.h),
                child: Text(
                  pObj["title"].ToString(),
                  style: TextStyle(
                      color: TColor.white,
                      fontSize: 40.sp,
                      fontWeight: FontWeight.w700
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.h),
                child: Text(
                  pObj["subtitle"].ToString(),
                  style: TextStyle(
                    color: TColor.white,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500
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
