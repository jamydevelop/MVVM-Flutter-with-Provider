import 'package:flutter/material.dart';

class AppTitle extends StatelessWidget {
  final String title;
  AppTitle({super.key,this.title = ''});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        title,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}