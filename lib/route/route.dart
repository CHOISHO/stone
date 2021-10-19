import 'package:flutter/material.dart';

import 'package:diary/page/Home.dart';
import 'package:diary/page/Login.dart';

// Route Names
const String loginPage = 'login';
const String homePage = 'home';

// Control Pages
Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case loginPage:
      return MaterialPageRoute(builder: (context) => LoginPage());
    case homePage:
      return MaterialPageRoute(builder: (context) => HomePage());
    default:
      throw ('');
  }
}
