import 'package:get/get.dart';

String LUNCH = 'lunch';

class LunchController extends GetxController {
//   final storage = GetStorage();
//   List get getLunchList => storage.read(LUNCH);

  RxList lunch = [].obs;

  void add(String value) {
    lunch.add(value);
    // storage.write(LUNCH, value);
  }
}
