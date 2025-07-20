import 'package:flutter/material.dart';
import 'package:mvvm_flutter_with_provider/users_list/models/users_list_model.dart';
import 'package:mvvm_flutter_with_provider/users_list/view_models/users_view_model.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    UsersViewModel usersViewModel = context.watch<UsersViewModel>();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Column(children: [_ui(usersViewModel)]),
    );
  }

  _ui(UsersViewModel usersViewModel) {
    if(usersViewModel.loading) {
      Container();
    }

    if(usersViewModel.userError != null) {
      return Container();
    }

    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) {
          UserModel userModel = usersViewModel.userListModel[index];
          return Container(
            child: Column(
              children: [
                Text(
                  userModel.name,
                  style: TextStyle(color: Colors.black),
                ),
                Text(
                  userModel.email,
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) => Divider(),
        itemCount: usersViewModel.userListModel.length
      ),
    );
  }
}