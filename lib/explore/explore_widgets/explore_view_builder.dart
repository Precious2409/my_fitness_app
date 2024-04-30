import 'package:flutter/material.dart';

class ExploreViewBuilder extends StatelessWidget {
  const ExploreViewBuilder({
    super.key, this.title,
  });

  final title;

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: (){},
            child: Container(
              height: 200,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.grey),
              child: Text(title,style: TextStyle(),),
            ),
          ),
        ),
      ],
    );
  }
}
