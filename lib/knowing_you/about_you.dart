import 'package:flutter/material.dart';
import 'package:my_fitness_app/common/common_widgets/button_elevation.dart';
import 'package:my_fitness_app/common/common_widgets/form_widget.dart';


class AboutYou extends StatefulWidget {
  const AboutYou({super.key});

  @override
  State<AboutYou> createState() => _AboutYouState();
}

class _AboutYouState extends State<AboutYou> {
  int? _value = 1;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios) ,
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}

//child: Scaffold(

//   body: Column(
//     children: [
//       Text(
//         "Help Us Get to Know You",
//         style: TextStyle(
//             fontWeight: FontWeight.bold,
//             fontSize:  16
//         ),
//       ),
//
//       SizedBox(height: 10,),
//
//       Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           Text(
//             "Your journey begins here! Please provide some basic details to personalize your experience",
//             style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 14
//             ),
//           ),
//
//           SizedBox(height: 20),
//
//           Text(
//             "Select your gender",
//             style: TextStyle(
//               fontSize: 14,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//
//           Text(
//             "This helps us to estimate your body's metabolic rate",
//             style: TextStyle(
//                 fontSize: 12,
//                 fontWeight: FontWeight.normal
//             ),
//           ),
//
//           SizedBox(height: 10,),
//
//           Row(
//             children: [
//               Radio(
//                   value: 1,
//                   groupValue: _value,
//                   onChanged: (value){},
//                   activeColor: Colors.black
//               ),
//
//               SizedBox(width: 10,),
//
//               Text("Female"),
//             ],
//           ) ,
//
//           Row(
//             children: [
//               Radio(
//                   value: 2,
//                   groupValue: _value,
//                   onChanged: (value){
//                     setState(() {
//                       _value = value;
//                     });
//                   },
//                   activeColor: Colors.black
//               ),
//               SizedBox(width: 10,),
//
//               Text("Male"),
//             ],
//           ) ,
//
//           SizedBox(height: 10,),
//
//           Row(
//             children: [
//               RadioListTile(
//                 value: 2,
//                 groupValue: _value,
//                 onChanged: (value){
//                   setState(() {
//                     _value = value;
//                   });
//                 },
//                 activeColor: Colors.black ,
//                 title: Text("Male"),
//               ),
//             ],
//           ),
//
//           FormWidget(
//               title: "Enter your age",
//               hintText: "Type your age",
//               textInputType: TextInputType.text,
//               obscureText: false
//           ),
//
//           SizedBox(height: 10,),
//
//           FormWidget(
//               title: "Enter your weight(in kg)",
//               hintText: "Input weight here",
//               textInputType: TextInputType.number,
//               obscureText: false
//           ),
//
//           SizedBox(height: 10,),
//
//           FormWidget(
//               title: "Enter your height (in cm)",
//               hintText: "Type your height value in cm",
//               textInputType: TextInputType.number,
//               obscureText: false
//           ) ,
//
//           SizedBox(height: 10,),
//         ],
//       ),
//
//       ButtonElevation(
//           onPressed: (){},
//           btnText: "Continue"
//       )
//     ],
//   ),
// )
