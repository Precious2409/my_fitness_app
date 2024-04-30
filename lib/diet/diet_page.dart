import 'package:flutter/material.dart';
import 'package:my_fitness_app/common/common_widgets/list_tile_lead.dart';


class DietPage extends StatelessWidget {
  const DietPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListTileLead(
              title: "Diet Plans",
              onClicked: (){},
              conWidth: MediaQuery.of(context).size.width
          ),

          SizedBox(height: 10,),

          Text("Plan your meals and fuel your body with nutritious recipes"),

          SizedBox(height: 10,),

        ],
      ),
    );
  }
}
