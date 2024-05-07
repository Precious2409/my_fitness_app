import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_fitness_app/common/colo_extension.dart';
import 'package:my_fitness_app/common/common_widgets/button_outlined.dart';
import 'package:my_fitness_app/explore/explore_widgets/common_list_slides.dart';
import 'package:my_fitness_app/explore/explore_widgets/explore_outlined_button.dart';
import 'package:my_fitness_app/explore/explore_widgets/explore_view_builder.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width:MediaQuery.of(context).size.width,
            child: ListView(
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ExploreOutlinedButton(text: "For You",),
                        ExploreOutlinedButton(text: "All",),
                        ExploreOutlinedButton(text: "Cardio",),
                        ExploreOutlinedButton(text: "Full Body",),
                        ExploreOutlinedButton(text: "Yoga",),
                      ],
                    ),

                    SizedBox(height: 10.h,),

                    CommonListSlides(title: "Popular Workout Routines",),

                    SizedBox(height: 5.h,),

                    Container(
                      height: 200.h,
                      width: 400.w,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          ExploreViewBuilder(
                            title: "Chest Workout",
                            subtitle: 'Full Equipment',
                            image: 'assets/images/unlock_your_potential.png',
                            subsubtitle: '  local time: 1h',
                          ),
                          ExploreViewBuilder(
                            title: "Chest Workout",
                            subtitle: 'Full Equipment',
                            image: 'assets/images/unlock_your_potential.png',
                            subsubtitle: '  local time: 1h',
                          ),
                        ],
                      ),
                    ),


                    SizedBox(height: 10.h,),

                    CommonListSlides(title: "Featured Meal Plans",),

                    SizedBox(height: 5.h,),

                    Container(
                      height: 200.h,
                      width: 400.w,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          ExploreViewBuilder(
                            title: "Chest Workout",
                            subtitle: 'Full Equipment',
                            image: 'assets/images/unlock_your_potential.png',
                            subsubtitle: '  local time: 1h',
                          ),
                          ExploreViewBuilder(
                            title: "Chest Workout",
                            subtitle: 'Full Equipment',
                            image: 'assets/images/unlock_your_potential.png',
                            subsubtitle: '  local time: 1h',
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 10,),

                    CommonListSlides(title: "Community Challenges and Groups",),

                    SizedBox(height: 5,),

                    Container(
                      height: 200.h,
                      width: 400.w,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          ExploreViewBuilder(
                            title: "Chest Workout",
                            subtitle: 'Full Equipment',
                            image: 'assets/images/unlock_your_potential.png',
                            subsubtitle: '  local time: 1h',
                          ),
                          ExploreViewBuilder(
                            title: "Chest Workout",
                            subtitle: 'Full Equipment',
                            image: 'assets/images/unlock_your_potential.png',
                            subsubtitle: '  local time: 1h',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}





