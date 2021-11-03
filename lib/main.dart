import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:diary/variables/theme.dart';
import 'package:diary/route/pages.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  runApp(
    GetMaterialApp(
      title: 'Stone',
      theme: themeData,
      darkTheme: themeData,
      getPages: Pages.list,
      initialRoute: Routes.login,
    ),
  );
}
