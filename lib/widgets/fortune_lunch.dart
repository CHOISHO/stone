import 'dart:async';

import 'package:diary/controller/lunch_controller.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'package:get/get.dart';

class FortuneLunch extends StatelessWidget {
  const FortuneLunch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final LunchController lunch = Get.find();
    RxList lunchList = lunch.lunch;
    StreamController<int> controller = StreamController<int>();
    return Obx(
      () => lunchList.length > 1
          ? FortuneWheel(
              physics: CircularPanPhysics(
                duration: const Duration(seconds: 1),
                curve: Curves.decelerate,
              ),
              onFling: () {
                controller.add(1);
              },
              selected: controller.stream,
              items: [
                for (var lunch in lunchList) FortuneItem(child: Text(lunch)),
              ],
            )
          : Container(),
    );
  }
}
