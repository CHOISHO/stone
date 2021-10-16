import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'route/route.dart' as route;

void main() {
  runApp(
    GetMaterialApp(
      title: 'HOME',
      onGenerateRoute: route.controller,
      initialRoute: route.loginPage,
    ),
  );
}
