import 'package:flutter/material.dart';
import 'package:my_fitness_app/common/common_widgets/list_tile_lead.dart';

class WorkoutView extends StatelessWidget {
  const WorkoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListTileLead(
              title: "Workout Routines",
              onClicked: (){},
              conWidth: MediaQuery.of(context).size.width
          ),

          SizedBox(height: 10,),

          Text("Plan your meals and fuel your body with nutritious recipes"),

          SizedBox(height: 10,),

          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
            child: SizedBox(
              child: Column(
                children: [
                  Text("Day 01 - Warm Up"),
                  Text("7:00am - 8:00am")
                ],
              ),
            ),
          ),

          Text("Workout Library"),
          Text("Browse through various workout categories such as cardio, strength training or yoga"),

          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Card(
                        child: Padding(padding: EdgeInsets.all(8)),
                      ),
                      Card(
                        child: Padding(padding: EdgeInsets.all(8)),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Card(
                        child: Padding(padding: EdgeInsets.all(8)),
                      ),
                      Card(
                        child: Padding(padding: EdgeInsets.all(8)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
