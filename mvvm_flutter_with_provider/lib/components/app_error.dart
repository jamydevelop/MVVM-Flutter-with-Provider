import 'package:flutter/material.dart';

class AppError extends StatelessWidget {
  final String errortxt;
  const AppError({super.key, required this.errortxt});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: null != errortxt && errortxt.isNotEmpty,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(18),
        child: Text(
          errortxt,
          style: TextStyle(
            color: Colors.red,
            fontSize: 18.0
          ),
        ),
      ),
    );
  }
}