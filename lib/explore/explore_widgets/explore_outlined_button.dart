import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_fitness_app/common/colo_extension.dart';

class ExploreOutlinedButton extends StatelessWidget {
  const ExploreOutlinedButton({
    super.key, required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: (){},
      child: Text(text),
      style: OutlinedButton.styleFrom(
        textStyle: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w700,
        ),
          backgroundColor: Colors.white,
          foregroundColor: TColor.secondaryColor3,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7.r)
          ),
          side: BorderSide(color: TColor.secondaryColor3),
          minimumSize: Size(64.w, 32.h)
      ),
    );
  }
}
