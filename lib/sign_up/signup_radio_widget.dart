import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpRadioWidget extends StatelessWidget {
  const SignUpRadioWidget({
    super.key, required this.title, required this.sub,
  });

  final String title;
  final String sub;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
            title,
            style:TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16.sp,
                color: Colors.black,
                overflow: TextOverflow.clip
            )
        ),
        Text(
            sub,
            style:TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16.sp,
                color: Colors.black,
                overflow: TextOverflow.clip
            )
        ),
      ],
    );
  }
}
