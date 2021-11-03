import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

String LUNCH = 'lunch';

class LunchController extends GetxController {
  final storage = GetStorage();
  dynamic get getLunchList => storage.read(LUNCH);
  dynamic get getLunchList2 => storage.read('test');

  RxList lunch = [].obs;

  void add(String value) {
    lunch.add(value);
    storage.write(LUNCH, value);
    print(value);
    storage.write('test', 'value 입니닷');
  }
}
