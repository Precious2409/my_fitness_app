import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_fitness_app/common/colo_extension.dart';

class HomeContainer extends StatelessWidget {
  const HomeContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
            SizedBox(height: 8,),
            Text(
              "30mins",
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: TColor.primaryColor1
              ) ,
            ),
            Text(
              "Workout Completed",
              style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                  color: TColor.primaryColor1,
                  overflow: TextOverflow.ellipsis
              ) ,
            ),

          ],
        ),
      ),
    );
  }
}
