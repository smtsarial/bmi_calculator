import 'package:flutter/material.dart';

var _email = ["a"];
var _password = ["a"];
int _i = 1;

class Authentication {
  bool fetchCredentials(String email, String password) {
    for (var j = 0; j < _email.length; j++) {
      if (email == _email[j] && password == _password[j]) {
        return true;
      }
    }
    return false;
  }

  bool checkUserRepeat(username) {
    for (var j = 0; j < _email.length; j++) {
      if (username == _email[j]) {
        print(username);
        return true;
      }
    }
    return false;
  }

  void insertCredentials(username, password) {
    _email.add(username);
    _password.add(password);
    _i++;
  }

  bool isPasswordCompliant(String password, [int minLength = 6]) {
    if (password == null || password.isEmpty) {
      return false;
    }

    bool hasUppercase = password.contains(new RegExp(r'[A-Z]'));
    bool hasDigits = password.contains(new RegExp(r'[0-9]'));
    bool hasLowercase = password.contains(new RegExp(r'[a-z]'));
    bool hasSpecialCharacters =
        password.contains(new RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
    bool hasMinLength = password.length > minLength;

    return hasDigits &
        hasUppercase &
        hasLowercase &
        hasSpecialCharacters &
        hasMinLength;
  }
}
