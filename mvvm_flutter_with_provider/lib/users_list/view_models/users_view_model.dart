import 'package:flutter/material.dart';
import 'package:mvvm_flutter_with_provider/users_list/models/user_error.dart';
import 'package:mvvm_flutter_with_provider/users_list/models/users_list_model.dart';
import 'package:mvvm_flutter_with_provider/users_list/repo/api_status.dart';
import 'package:mvvm_flutter_with_provider/users_list/repo/user_services.dart';

class UsersViewModel extends ChangeNotifier {

  //Declaration
  bool _loading = false;
  List<UserModel> _userListModel = [];
  UserError? _userError;

  //getters
  bool get loading => _loading;
  List<UserModel> get userListModel => _userListModel;
  UserError? get userError => _userError;

  //setters
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

  getUsers() async {
    setLoading(true);
    var response = await UserServices.getUsers();
    if (response is Success) {
      setUserListModel(response.response as List<UserModel>);
    }
    if(response is Failure) {
      UserError userError = UserError(
        code: response.code,
        message: response.errorResponse.toString(),
      );
    setUserError(userError);
    }
  }
}