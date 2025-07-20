import 'package:flutter/material.dart';
import 'package:mvvm_flutter_with_provider/components/app_loading.dart';
import 'package:mvvm_flutter_with_provider/components/user_list_row.dart';
import 'package:mvvm_flutter_with_provider/users_list/models/users_list_model.dart';
import 'package:mvvm_flutter_with_provider/users_list/view_models/users_view_model.dart';
import 'package:mvvm_flutter_with_provider/utils/navigation_utils.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    UsersViewModel usersViewModel = context.watch<UsersViewModel>();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Users',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
         padding: EdgeInsets.all(20),
        child: Column(
          children: [
            _ui(usersViewModel)
          ]
        )
      ),
    );
  }

  _ui(UsersViewModel usersViewModel) {
    if(usersViewModel.loading) {
      AppLoading();
    }

    if(usersViewModel.userError != null) {
      return Container();
    }

    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) {
          UserModel userModel = usersViewModel.userListModel[index];
          return UserListRow(userModel: userModel, onTap: () {
            //
            usersViewModel.setSelectedUser(userModel);
            openUserDetails(context);
          });
        },
        separatorBuilder: (context, index) => Divider(),
        itemCount: usersViewModel.userListModel.length
      ),
    );
  }
}