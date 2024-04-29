import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_fitness_app/common/colo_extension.dart';
import 'package:my_fitness_app/onboarding/onboarding_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen>{
  int selectedPage = 0;
  PageController controller = PageController();

  @override
  void initState(){super.initState();

  controller.addListener(() {
    selectedPage = controller.page?.toInt() ?? 0;
    setState(() {

    });
  });
}

  List pageArr = [
    {
      "title": "Unlock Your Potential",
      "subtitle": "Get access to well curated workout routines for a stronger,healthier you",
      "image": "assets/images/unlock_your_potential.png",
    },
    {
      "title": "Embrace Vitality",
      "subtitle": "Embrace a healthier lifestyle, discover the power of active living",
      "image": "assets/images/embrace_vitality.png",
    },
    {
      "title": "Nourish Your Body",
      "subtitle": "Explore local recipes and meal plans tailored to your fitness goals",
      "image": "assets/images/nourish_your_body.png",
    },
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: TColor.white,
      body: Stack(
        alignment: Alignment.bottomRight,
        children: [
          PageView.builder(
            controller: controller,
            itemCount: pageArr.length,
            itemBuilder:(context, index) {
              var pObj = pageArr[index] as Map? ?? {};
              return OnboardingPage(pObj: pObj) ;
            },
          ),
          SafeArea(
            child: Align(
              alignment: Alignment.topRight,
              child: ElevatedButton(
                  onPressed: (){
                    //Navigator.pushNamed(context, "/.aboutyoupage");
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      minimumSize: Size(60.sp, 34.sp),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(24.r))),
                  ),
                  child: Text("Skip",style: TextStyle(color: Colors.white),)
              ),
            ),
          ),

          Column(
              children  : [
                SmoothPageIndicator(
                  controller: controller,
                  count: pageArr.length,
                  effect: ExpandingDotsEffect(
                      dotColor: Colors.transparent,
                      activeDotColor: Colors.white,
                      dotHeight: 20.h,
                      dotWidth: 20.w
                  ),
                ),
              ]
          ),
        ],
      ),
    );
  }
}
