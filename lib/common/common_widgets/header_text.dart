import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({
    super.key,
    required this.title,
    required this.subtitle,
    this.number});

  final String title;
  final String subtitle;
  final String? number;

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: EdgeInsets.all(10),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          IconButton(
            icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
                size: 24
            ) ,
            onPressed: () {},
          ),
          Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 24.sp
            ),
          ),
          SizedBox(height: 10.h,),
          Text(
            subtitle,
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16.sp
            ),
          ),

          SizedBox(height: 20.h,),
        ]
        ),
    );
  }
}
