import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_fitness_app/common/colo_extension.dart';
import 'package:my_fitness_app/workout/workout_cut_list.dart';
import 'package:my_fitness_app/workout/workout_view_builder.dart';


class WorkoutView extends StatelessWidget {
  const WorkoutView({super.key});

  @override
  Widget build(BuildContext context) {
   return SafeArea(
     child: Scaffold(
       body: Padding(
         padding: const EdgeInsets.all(10.0),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Row(
               children: [
                 Text(
                     "Workout Routines",
                   style: TextStyle(
                       fontSize: 24.sp,
                       fontWeight: FontWeight.w600,
                       color: TColor.primaryColor1
                   ),
                 ),
                 SizedBox(width: MediaQuery.of(context).size.width * 0.25,),
                 IconButton(
                     onPressed: (){},
                     icon: Icon(Icons.search)
                 )
               ],
             ),

             SizedBox(height: 5.h),

             Text(
               "Plan your meals and fuel your body with nutritious recipes.",
               style: TextStyle(
                   fontSize: 20.sp,
                   fontWeight: FontWeight.w500,
                   color: TColor.primaryColor1
               ),
             ),

             SizedBox(height: 10.h),

             Container(
               height: 200.h,
               width: 500.w,
               child: ListView(
                 scrollDirection: Axis.horizontal,
                 children: [
                   WorkoutViewBuilder(
                     title: 'Day 01 - Warm Up',
                     image: 'assets/images/nourish_your_body.png',
                     subtitle: '07:00 - 08:00 AM',
                   ),
                   WorkoutViewBuilder(
                     title: 'Day 02 - Warm Up',
                     image: 'assets/images/nourish_your_body.png',
                     subtitle: '07:00 - 08:00 AM',
                   ),
                 ],
               ),
             ),

             Text(
               "Workout Library",
               style: TextStyle(
                   fontSize: 20.sp,
                   fontWeight: FontWeight.w500,
                   color: TColor.primaryColor1
               ),
             ),

             Text(
               "Browse through various workout categories such as cardio, strength training, or yoga.",
               style: TextStyle(
                   fontSize: 16.sp,
                   fontWeight: FontWeight.w400,
                   color: Colors.grey
               ),
             ),

             SizedBox(height: 5.h),

             Container(
               height: 200.h,
               width: 300.w,
               child: ListView(
                 scrollDirection: Axis.vertical,
                 children: [
                   WorkoutCutList(
                     title: 'Chest Workout',
                     image: 'assets/images/nourish_your_body.png',
                     subtitle: '07:00 - 08:00 AM',
                   ),
                  WorkoutCutList(
                     title: 'Day 02 - Warm Up',
                     image: 'assets/images/nourish_your_body.png',
                     subtitle: '07:00 - 08:00 AM',
                   ),
                 ],
               ),
             ),

           ],
         ),
       )
     ),
   );
  }
}
//     return SafeArea(
//       child: Scaffold(
//         body: Column(
//           children: [
//             Row(
//               children: [
//                 Text("Workout Routines"),
//                 IconButton(onPressed: (){}, icon: Icons.search)
//                 )
//               ]
//             ),
//
//             Text("Plan your meals and fuel your body with nutritious recipes"),
//
//             SizedBox(height: 10,),
//
//             // Card(
//             //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
//             //   child: Container(
//             //     child: Column(
//             //       children: [
//             //         Text("Day 01 - Warm Up"),
//             //         Text("7:00am - 8:00am")
//             //       ],
//             //     ),
//             //   ),
//             // ),
//             //
//             // Text("Workout Library"),
//             // Text("Browse through various workout categories such as cardio, strength training or yoga"),
//             //
//             // Card(
//             //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
//             //   child: Container(
//             //     child: Column(
//             //       children: [
//             //         Row(
//             //           children: [
//             //             Card(
//             //               child: Padding(padding: EdgeInsets.all(8)),
//             //             ),
//             //             Card(
//             //               child: Padding(padding: EdgeInsets.all(8)),
//             //             ),
//             //           ],
//             //         ),
//             //         Row(
//             //           children: [
//             //             Card(
//             //               child: Padding(padding: EdgeInsets.all(8)),
//             //             ),
//             //             Card(
//             //               child: Padding(padding: EdgeInsets.all(8)),
//             //             ),
//             //           ],
//             //         ),
//             //       ],
//             //     ),
//             //   ),
//             // )
//           ],
//         ),
//       ),
//     );
//   }
// }
