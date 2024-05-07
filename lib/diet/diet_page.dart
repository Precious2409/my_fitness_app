import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_fitness_app/common/colo_extension.dart';
import 'package:my_fitness_app/common/common_widgets/list_tile_lead.dart';


class DietPage extends StatelessWidget {
  const DietPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Diet Plans",
                    style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w600,
                        color: TColor.primaryColor1
                    ),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.50,),
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

            ],
          ),
        ),
      ),
    );
  }
}
