import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LunchController extends GetxController {
  final lunchController = TextEditingController();
  RxList lunch = [].obs;

  @override
  void onInit() {
    // Simulating obtaining the user name from some local storage
    lunchController.text = 'foo@foo.com';
    super.onInit();
  }

  void onChange(value) {
    lunchController.text = value;
  }

  add() {
    lunch.add(lunchController.text);
    lunchController.text = '';
  }
}
