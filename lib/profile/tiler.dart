import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_fitness_app/common/colo_extension.dart';

class Tiler extends StatelessWidget {
  const Tiler({super.key, required this.leading, required this.title});

  final IconData leading;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Color(0xffF9F9F9),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
      leading: Icon(leading),
      trailing: Icon(Icons.arrow_forward_ios),
      title: Text(
          title,
        style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w400,
            color: TColor.primaryColor1
        ),
      ),
    );
  }
}
