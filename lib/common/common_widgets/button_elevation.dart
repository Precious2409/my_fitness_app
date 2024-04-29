import 'package:flutter/material.dart';

class ButtonElevation extends StatelessWidget {
  final String btnText;
  final double? fontSize;
  final VoidCallback onPressed;
  final double? btnWidth;
  final double? btnHeight;
  final Color? btnTextColor;
  final Color btnColour;




  ButtonElevation
      ({super.key,
    required this.onPressed,
    this.btnTextColor = Colors.white,
    required this.btnText,
    this.fontSize = 14,
    this.btnWidth,
    this.btnHeight,
    this.btnColour = Colors.black,});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          minimumSize: Size(
              btnWidth ?? MediaQuery.of(context).size.width,
              btnHeight ?? MediaQuery.of(context).size.height * 0.06
          ),
          backgroundColor: btnColour,
          elevation: 1.0,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)
          )
      ),
      child: Text(
          btnText,
          style: TextStyle(
              fontSize: fontSize,
              color: btnTextColor
          )
      ),
    );
  }
}
