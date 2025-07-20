import 'package:flutter/material.dart';
import 'package:mvvm_flutter_with_provider/users_list/views/add_user_screen.dart';
import 'package:mvvm_flutter_with_provider/users_list/views/user_details_screen.dart';

openUserDetails (BuildContext context) async {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => UserDetailsScreen())
  );
}

openAddUser(BuildContext context) async {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => AddUserScreen())
  );
}