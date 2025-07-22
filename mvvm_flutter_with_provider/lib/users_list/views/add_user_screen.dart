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
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: AppTitle(title: 'Add User'),
        actions: [
          IconButton(
            onPressed: () async {
              bool userAdded = await usersViewModel.addUser();
                if (!userAdded) {
                  return;
                }
                Navigator.pop(context);
            },
            icon: Icon(Icons.save),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                hint: Text('Name'),
                border: OutlineInputBorder()
              ),
              onChanged: (value) async {
                 usersViewModel.addingUser.name = value;
              },
            ),
            SizedBox(height: 18),
            TextFormField(
              decoration: InputDecoration(
                hint: Text('Email'),
                border: OutlineInputBorder()
              ),
              onChanged: (value) async {
                 usersViewModel.addingUser.email = value;
              },
            ),
          ],
        ),
      ),
    );
  }
}