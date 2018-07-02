import 'dart:async';
import 'package:flutter_demo/utils/network_utils.dart';
import 'package:flutter_demo/model/user.dart';

class RestDatasource {
  NetworkUtil _netUtil = new NetworkUtil();
  static final BASE_URL = "http://www.mocky.io/v2/5b3a63e02e0000da161581f1";

  Future<User> login(String username, String password) {
    return _netUtil.post(BASE_URL, body: {
      "username": username,
      "password": password
    }).then((dynamic res) {
      print(res.toString());
      return new User(username, password);
    });
  }
}