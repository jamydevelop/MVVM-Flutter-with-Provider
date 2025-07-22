import 'package:flutter/material.dart';
import 'package:mvvm_flutter_with_provider/components/app_title.dart';
import 'package:mvvm_flutter_with_provider/users_list/view_models/users_view_model.dart';
import 'package:provider/provider.dart';

class AddUserScreen extends StatelessWidget {
  const AddUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final UsersViewModel usersViewModel = context.watch<UsersViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: AppTitle(title: 'Add User'),
      ),
      body: Column(
        children: [
          TextFormField(
            onChanged: (value) async {
               usersViewModel.addedUser.name = value;
            },
          )
        ],
      ),
    );
  }
}