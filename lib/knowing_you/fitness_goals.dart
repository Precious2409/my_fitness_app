import 'package:flutter/material.dart';
import 'package:my_fitness_app/common/common_widgets/button_elevation.dart';
import 'package:my_fitness_app/common/common_widgets/button_outlined.dart';
import 'package:my_fitness_app/common/common_widgets/list_tile_lead.dart';

class FitnessGoals extends StatefulWidget {
  const FitnessGoals({super.key});

  @override
  State<FitnessGoals> createState() => _FitnessGoalsState();
}

class _FitnessGoalsState extends State<FitnessGoals> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios) ,
          onPressed: () {},
        ),
      ),
      // ignore: prefer_const_constructors
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(""),
          Text(""),
          Text(""),
          ListTileLead(
            title: "Lose weight",
            onClicked: () {  },
            conWidth: MediaQuery.of(context).size.width,
          ),
          ListTileLead(
            title: "Gain Muscle",
            onClicked: () {  },
            conWidth: MediaQuery.of(context).size.width,
          ),
          ListTileLead(
            title: "Keep Fit",
            onClicked: () {  },
            conWidth: MediaQuery.of(context).size.width,
          ),
          ListTileLead(
            title: "Get Stronger",
            onClicked: () {  },
            conWidth: MediaQuery.of(context).size.width,
          ),

          SizedBox(height: 15,),

          Text(""),

          SizedBox(height: 15,),

          Row(
            children: [
              ButtonOutlined(
                label: "Chest",
                btnWidth: 50,
                onPressed: (){},
              ),
              ButtonOutlined(
                label: "Back",
                btnWidth: 50,
                onPressed: (){},
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ButtonOutlined(
                label: "Shoulder",
                btnWidth: 50,
                onPressed: (){},
              ),
              ButtonOutlined(
                label: "Arms",
                btnWidth: 50,
                onPressed: (){},
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ButtonOutlined(
                label: "Abdomen",
                btnWidth: 50,
                onPressed: (){},
              ),
              ButtonOutlined(
                label: "Legs",
                btnWidth: 50,
                onPressed: (){},
              ),
            ],
          ),

          ButtonElevation(
              onPressed: (){},
              btnText: "Continue"
          )
        ],
      ),
    );
  }
}
