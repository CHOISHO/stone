import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';

import 'package:diary/controller/lunch_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
      ),
      drawer: const Drawer(),
      body: _HomeBody(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Expanded(
          child: MyList(),
        ),
        ItemMaker(),
      ],
    );
  }
}

class MyList extends StatelessWidget {
  const MyList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final LunchController lunch = Get.find();
    // RxList lunchList = lunch.lunch;
    // StreamController<int> controller = StreamController<int>();
    print(lunch.getLunchList.toString());
    print(lunch.getLunchList2);

    return Center(
      //   child: Obx(
      //     () => lunchList.length > 1
      //         ? FortuneWheel(
      //             physics: CircularPanPhysics(
      //               duration: const Duration(seconds: 1),
      //               curve: Curves.decelerate,
      //             ),
      //             onFling: () {
      //               controller.add(1);
      //             },
      //             selected: controller.stream,
      //             items: [
      //               for (var lunch in lunchList) FortuneItem(child: Text(lunch)),
      //             ],
      //           )
      //         : Container(),
      //   ),
      child: Center(
        child: Text(lunch.getLunchList),
      ),
    );
  }
}

class ItemMaker extends StatelessWidget {
  const ItemMaker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final lunchInput = TextEditingController();
    final LunchController lunch = Get.find();

    return Container(
      width: double.infinity,
      height: 250,
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.amber[200],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '오늘 먹은 점심',
            style: Theme.of(context).textTheme.headline1,
          ),
          Expanded(
            child: TextFormField(
              controller: lunchInput,
            ),
          ),
          AddButton(
            onPressed: () {
              lunch.add(lunchInput.text);
              lunchInput.clear();
            },
          ),
        ],
      ),
    );
  }
}

class AddButton extends StatelessWidget {
  const AddButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(double.infinity, 56),
        primary: Theme.of(context).primaryColor,
      ),
      child: Center(
        child: Text('추가하기',
            style: Theme.of(context)
                .textTheme
                .headline2!
                .apply(color: Colors.white)),
      ),
      onPressed: onPressed,
    );
  }
}
