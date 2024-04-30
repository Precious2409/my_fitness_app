import 'package:flutter/material.dart';
import 'package:my_fitness_app/common/colo_extension.dart';
import 'package:my_fitness_app/common/common_widgets/button_outlined.dart';
import 'package:my_fitness_app/explore/explore_widgets/common_list_slides.dart';
import 'package:my_fitness_app/explore/explore_widgets/explore_view_builder.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: SizedBox(
              height: 25,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7)
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Row(children: [
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.search),
                              suffixIcon: Icon(Icons.filter),
                              hintText: "Search",
                            ),
                          ),
                        )
                      ]
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),

          SizedBox(height: 10,),

          ListView(
              scrollDirection: Axis.vertical,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ButtonOutlined(
                    label: "For You",
                    onPressed: (){},
                    btnHeight: 25,
                    outlineColor: TColor.secondaryColor3,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ButtonOutlined(
                    label: "Cardio",
                    onPressed: (){},
                    btnHeight: 25,
                    outlineColor: TColor.secondaryColor3,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ButtonOutlined(
                    label: "Full Body",
                    onPressed: (){},
                    btnHeight: 25,
                    outlineColor: TColor.secondaryColor3,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ButtonOutlined(
                    label: "Yoga",
                    onPressed: (){},
                    btnHeight: 25,
                    outlineColor: TColor.secondaryColor3,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ButtonOutlined(
                    label: "For You",
                    onPressed: (){},
                    btnHeight: 25,
                    outlineColor: TColor.secondaryColor3,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ButtonOutlined(
                    label: "For You",
                    onPressed: (){},
                    btnHeight: 25,
                    outlineColor: TColor.secondaryColor3,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ButtonOutlined(
                    label: "For You",
                    onPressed: (){},
                    btnHeight: 25,
                    outlineColor: TColor.secondaryColor3,
                  ),
                )
              ]          ),

          SizedBox(height: 20,),

          CommonListSlides(title: "Featured Meal Plans",),

          SizedBox(height: 10,),

          ExploreViewBuilder(),

          SizedBox(height: 10,),

          CommonListSlides(title: "Community Challenges and Groups",),

          SizedBox(height: 10,),

          ExploreViewBuilder(),

          CommonListSlides(title: "Popular Workout Routines",),

          SizedBox(height: 10,),

          ExploreViewBuilder(),



        ],
      ),
    );
  }
}
