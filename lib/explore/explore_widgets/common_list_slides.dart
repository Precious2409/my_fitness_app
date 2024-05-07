import 'package:flutter/material.dart';
import 'package:my_fitness_app/common/colo_extension.dart';


class CommonListSlides extends StatelessWidget {
  const CommonListSlides({
    super.key, required this.title,
  });

  final title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold
          ),
        ),

        Spacer(),

        TextButton(
            onPressed: (){},
            child:Text(
              "See All",
              style: TextStyle(fontSize: 12,color: TColor.secondaryColor1),
            )
        )
      ],
    );
  }
}
