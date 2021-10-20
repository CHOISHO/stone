import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:diary/controller/lunch.controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final LunchController lunchController = Get.put(LunchController());

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
      ),
      drawer: Drawer(),
      body: _HomeBody(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
    final LunchController lunchController = Get.find();

    return Center(
      child: Obx(() => Text(lunchController.lunch.toString())),
    );
  }
}

class ItemMaker extends StatefulWidget {
  const ItemMaker({
    Key? key,
  }) : super(key: key);

  @override
  State<ItemMaker> createState() => _ItemMakerState();
}

class _ItemMakerState extends State<ItemMaker> {
  String textInputValue = '';

  @override
  Widget build(BuildContext context) {
    final LunchController lunchController = Get.find();

    return Container(
      width: double.infinity,
      height: 250,
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.amber[200],
        borderRadius: BorderRadius.only(
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
            child: TextField(
              controller: lunchController.lunchController,
              //   onChanged: (value) {
              //     lunchController.setLunchInput(value);
              //   },
            ),
          ),
          AddButton(
              lunchController: lunchController, textInputValue: textInputValue),
        ],
      ),
    );
  }
}

class AddButton extends StatelessWidget {
  const AddButton({
    Key? key,
    required this.lunchController,
    required this.textInputValue,
  }) : super(key: key);

  final LunchController lunchController;
  final String textInputValue;

  @override
  Widget build(BuildContext context) {
    final LunchController lunchController = Get.find();

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
      onPressed: () {
        lunchController.add();
      },
    );
  }
}
