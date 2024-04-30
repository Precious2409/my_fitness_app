import 'package:flutter/material.dart';
import 'package:my_fitness_app/common/common_widgets/button_elevation.dart';


class ActivityLevelCheck extends StatefulWidget {
  const ActivityLevelCheck({super.key});

  @override
  State<ActivityLevelCheck> createState() => _ActivityLevelCheckState();
}

class _ActivityLevelCheckState extends State<ActivityLevelCheck> {

  int? _value = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
          child: Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: Icon(Icons.arrow_back_ios) ,
                onPressed: () {},
              ),
            ),
            body: Column(
              children: [
                Text(
                  "Help us understand your typical activity level",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize:  16
                  ),
                ),

                SizedBox(height: 10,),

                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Understanding your activity level helps us tailor workouts to match your lifestyle and energy needs",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14
                      ),
                    ),

                    SizedBox(height: 20),

                    Text(
                      "How would you describe your activity level?",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 10,),

                    Row(
                      children: [
                        Radio(
                            value: 1,
                            groupValue: _value,
                            onChanged: (value){},
                            activeColor: Colors.black
                        ),

                        SizedBox(width: 10,),

                        Text("Sedentary(little to no exercise)"),
                      ],
                    ) ,

                    Row(
                      children: [
                        Radio(
                            value: 2,
                            groupValue: _value,
                            onChanged: (value){
                              setState(() {
                                _value = value;
                              });
                            },
                            activeColor: Colors.black
                        ),
                        SizedBox(width: 10,),

                        Text("Lightly active"),
                      ],
                    ) ,

                    SizedBox(height: 10,),

                    Row(
                      children: [
                        RadioListTile(
                          value: 2,
                          groupValue: _value,
                          onChanged: (value){
                            setState(() {
                              _value = value;
                            });
                          },
                          activeColor: Colors.black ,
                          title: Text("Moderately active"),
                        ),
                      ],
                    ),

                    SizedBox(height: 10,),
                  ],
                ),

                ButtonElevation(
                    onPressed: (){},
                    btnText: "Continue"
                )
              ],
            ),
          ),
        )
    );

  }
}
