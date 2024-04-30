import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_fitness_app/common/colo_extension.dart';


class OnboardingPage extends StatelessWidget {

  const OnboardingPage({super.key, required this.image, required this.title, required this.subtitle, });

  final String image;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {

    var media = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: media.height,
            width: media.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    image,
                  ),
                  fit: BoxFit.cover,
                )
            ),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: ElevatedButton(
                      onPressed: () {
                        //Navigator.pushNamed(context, "/.aboutyoupage");
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        minimumSize: Size(60.sp, 34.sp),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(24.r))),
                      ),
                      child: Text("Skip", style: TextStyle(color: Colors.white),)
                  ),
                ),
                SizedBox(height: 520.h),
                Column(
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
