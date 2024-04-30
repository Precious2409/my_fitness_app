import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FormWidget extends StatelessWidget {
  const FormWidget({
    super.key, required this.title, required this.hintText, required this.textInputType, required this.obscureText,
  });

  final String title;
  final String hintText;
  final TextInputType textInputType;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
                labelText: title,
                hintText: hintText,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.r)),
                )
            ),
            keyboardType: textInputType,
            obscureText: obscureText,
          )
        ],
      ),
    );
  }
}
