import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_fitness_app/common/colo_extension.dart';
import 'package:my_fitness_app/diet/diet_page.dart';
import 'package:my_fitness_app/explore/explore_page.dart';
import 'package:my_fitness_app/home/home_view.dart';
import 'package:my_fitness_app/profile/profile_view.dart';
import 'package:my_fitness_app/workout/workout_view.dart';


class ProloginScaffold extends StatefulWidget {
  const ProloginScaffold({super.key});

  @override
  State<ProloginScaffold> createState() => _ProloginScaffoldState();
}

class _ProloginScaffoldState extends State<ProloginScaffold> {

  int currentTab = 0;
  final List<Widget> screens = [
    HomeView(),
    WorkoutView(),
    DietPage(),
    ProfileView(),
    ExplorePage(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = HomeView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
          bucket: bucket,
          child: currentScreen
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            currentScreen = ExplorePage();
            currentTab = 0;
          });
        },
        backgroundColor: TColor.primaryColor2,
        child: Icon(
            Icons.explore_rounded,
          color: currentTab == 0 ? Colors.white: Colors.blueGrey,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                        currentScreen = HomeView();
                        currentTab = 4;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home_outlined,
                          color: currentTab == 4 ? TColor.primaryColor2 : Colors.blueGrey,
                        ),
                        Text(
                          "Home",
                          style: TextStyle(
                            color: currentTab == 4 ? TColor.primaryColor2 : Colors.blueGrey,
                          ),
                        )
                      ],
                    ),

                  ),

                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                        currentScreen = WorkoutView();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.monitor_heart_outlined,
                          color: currentTab == 1 ? TColor.primaryColor2 : Colors.blueGrey
                        ),
                        Text(
                          "Workout",
                          style: TextStyle(
                            color: currentTab == 1 ? TColor.primaryColor2 : Colors.blueGrey
                          ),
                        ),
                      ],
                    ),

                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget> [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                        currentScreen = DietPage();
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                            Icons.home_outlined,
                            color: currentTab == 2 ? TColor.primaryColor2 : Colors.blueGrey
                        ),
                        Text(
                          "Diet",
                          style: TextStyle(
                              color: currentTab == 2 ? TColor.primaryColor2 : Colors.blueGrey
                          ),
                        )
                      ],
                    ),

                  ),

                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                        currentScreen = ProfileView();
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                            Icons.person_outlined,
                            color: currentTab == 3 ? TColor.primaryColor2 : Colors.blueGrey
                        ),
                        Text(
                          "Profile",
                          style: TextStyle(
                              color: currentTab == 3 ? TColor.primaryColor2 : Colors.blueGrey
                          ),
                        )
                      ],
                    ),

                  )

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
