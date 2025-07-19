import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:mvvm_flutter_with_provider/users_list/models/users_list_model.dart';
import 'package:mvvm_flutter_with_provider/users_list/repo/api_status.dart';
import 'package:mvvm_flutter_with_provider/utils/constants.dart';

class UserServices {

  //returning Object, since we are going to return multiple of object.
  static Future<Object> getUsers() async{
    try {

      var url = Uri.parse(USERS_LIST);
      var response = await http.get(url);

      if(200 == response.statusCode) {
        return Success(response: usersListModelFromJson(response.body));
      }

      return Failure(code: USER_INVALID_RESPONSE, errorResponse: 'Invalid Response');
    } on HttpException {
       return Failure(code: NO_INTERNET, errorResponse: 'No Internet');
    } on HttpException {
       return Failure(code: INVALID_FORMAT, errorResponse: 'Invalid Format');
    } catch (e) {
       return Failure(code: UNKNOWN_ERROR, errorResponse: 'Unkown Error');
    }

  }
}