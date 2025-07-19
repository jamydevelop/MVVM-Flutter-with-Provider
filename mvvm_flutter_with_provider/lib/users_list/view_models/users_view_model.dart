import 'package:flutter/material.dart';
import 'package:mvvm_flutter_with_provider/users_list/models/user_error.dart';
import 'package:mvvm_flutter_with_provider/users_list/models/users_list_model.dart';

class UsersViewModel extends ChangeNotifier {

  //Declaration
  bool _loading = false;
  List<UserModel> _userListModel = [];
  UserError? _userError;


  //getters
  bool get loading => _loading;
  List<UserModel> get userListModel => _userListModel;

  setLoading(bool loading) async {
    _loading = loading;
    notifyListeners(); // this will notify the UI, saying there's a new value
  }

  setUserListModel(List<UserModel> userListModel) {
    _userListModel = userListModel;
    notifyListeners();

  }

  setUserError (UserError userError) {
    _userError = userError;
  }






}