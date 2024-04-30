import 'package:flutter/material.dart';

class Tiler extends StatelessWidget {
  const Tiler({super.key, required this.leading, required this.title});

  final IconData leading;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.grey,
      leading: Icon(leading),
      trailing: Icon(Icons.arrow_forward_ios),
      title: Text(title),
    );
  }
}
