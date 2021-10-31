import 'package:get/get.dart';

class LunchController extends GetxController {
  RxList lunch = [].obs;

  void add(String value) {
    lunch.add(value);
  }
}
