import 'package:flutter/material.dart';

class ButtonOutlined extends StatelessWidget {
  const ButtonOutlined({
    super.key,
    required this.label,
    this.btnSize,
    this.fontSize,
    required this.onPressed,
    this.btnWidth,
    this.btnHeight,
    this.btnTextColor,
    this.btnColor = Colors.white,
    this.outlineColor,
    this.icon,
  });

  final String label;
  final String? btnSize;
  final double? fontSize;
  final VoidCallback onPressed;
  final IconData? icon;
  final double? btnWidth;
  final double? btnHeight;
  final Color? btnTextColor;
  final Color? btnColor;
  final Color? outlineColor;


  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      child: Align(
          alignment: Alignment.bottomLeft,
          child: Text(label)
      ),
      style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7) ),
          side: BorderSide(color: Colors.grey.shade700),
          backgroundColor: btnColor,
          minimumSize: Size(
              btnWidth ?? MediaQuery.of(context).size.width,
              btnHeight ?? MediaQuery.of(context).size.height * 0.06
          ),
          textStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: btnTextColor,
          )
      ),
    );
  }
}
