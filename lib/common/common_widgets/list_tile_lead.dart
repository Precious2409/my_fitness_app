import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_fitness_app/common/colo_extension.dart';


class ListTileLead extends StatelessWidget {
  const ListTileLead({
    super.key,
    this.icon,
    required this.title,
    this.sltColor,
    this.iconColor,
    this.txtColor,
    required this.onClicked,
    required this.conWidth
  });

  final IconData? icon;
  final String title;
  final Color? sltColor;
  final Color? iconColor;
  final Color? txtColor;
  final VoidCallback onClicked;
  final double conWidth;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 25.h,
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey.shade700,
                width: conWidth,
              )
          ),
          child: ListTile(
            leading: Icon(Icons.search_outlined),
            title: Text(title),
            selectedTileColor: TColor.primaryColor3,
            onTap: onClicked,
            iconColor: Colors.black,
            textColor: Colors.black45,
          ),
        ),
      ],
    );
  }
}
