import 'package:flutter/material.dart';
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
      body: Container(
        child: _ui(usersViewModel)
      ),
    );
  }

  _ui(UsersViewModel usersViewModel) {
    if(usersViewModel.loading) {
      Container();
    }

    if(usersViewModel.userError != null) {
      return Container();
    }
  }
}