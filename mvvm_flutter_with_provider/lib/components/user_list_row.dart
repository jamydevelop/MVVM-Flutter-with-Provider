import 'package:flutter/material.dart';
import 'package:mvvm_flutter_with_provider/components/app_title.dart';
import 'package:mvvm_flutter_with_provider/users_list/models/users_list_model.dart';

class UserListRow extends StatelessWidget {
  final UserModel userModel;
  final VoidCallback onTap;
  const UserListRow({super.key, required this.userModel, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppTitle(title: userModel.name,),
                Text(
                  userModel.email,
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
      ),
    );
  }
}