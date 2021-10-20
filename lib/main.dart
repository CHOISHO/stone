import 'package:diary/variables/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'route/route.dart' as route;

void main() {
  runApp(
    GetMaterialApp(
      title: 'Stone',
      theme: themeData,
      onGenerateRoute: route.controller,
      initialRoute: route.loginPage,
    ),
  );
}
