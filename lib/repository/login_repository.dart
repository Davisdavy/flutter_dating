import 'dart:convert';

import 'package:dating/models/user_model.dart';
import 'package:http/http.dart' as http;

class LoginRepository {
  Future postUserData(String email, String password) async {

    ///First create a request to the api
    ///Required: API URL, Email, Password, Type of request(POST), headers if request needs any
    final Map<String, dynamic>  postData = {
      'email': email,
      'password': password
    };

    final response = await http.post(Uri.parse(
        ''),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(postData),
    );
    ///Check the request made is OKAY
    if(response.statusCode == 200){
      print("Am okay");
      ///Save data as an object class aka UserModel
      final Map<String, dynamic> responseData = json.decode(response.body);
      print("Data success $responseData");
      return UserModel.fromJson(responseData['data']);
    }else{///401
      ///it seems kuna error na data
      final Map<String, dynamic> responseData = json.decode(response.body);
      print("Data error $responseData");
      return UserModel.fromJson(responseData['message']);
    }
  }
}
