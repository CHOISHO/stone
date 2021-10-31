import 'package:diary/controller/lunch_controller.dart';
import 'package:diary/page/home_page.dart';
import 'package:diary/page/login_page.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
part './routes.dart';

class Pages {
  static final List<GetPage> list = [
    GetPage(
      name: Routes.home,
      page: () => const HomePage(),
      binding: BindingsBuilder(
          () => Get.lazyPut<LunchController>(() => LunchController())),
    ),
    GetPage(
      name: Routes.login,
      page: () => const LoginPage(),
    ),
  ];
}
