import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExploreViewBuilder extends StatelessWidget {
  const ExploreViewBuilder({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.subsubtitle,
  });

  final String title;
  final String subtitle;
  final String subsubtitle;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 140.h,
        width: 220.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            image: DecorationImage(
              image: AssetImage(
                image,
              ),
              fit: BoxFit.cover,
            )
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20.sp,
                color: Colors.white,
              ),
            ),

            Row(
              children: [
                Text(
                  subtitle,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12.sp,
                    color: Colors.white,
                  ),
                ),

                Divider(thickness: 30, color:Colors.white, height: 20.h),

                Text(
                  subsubtitle,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12.sp,
                    color: Colors.white,
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}

