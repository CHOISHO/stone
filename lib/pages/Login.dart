import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:diary/route/route.dart' as route;

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Widget _bodyWidget(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 30)),
            onPressed: () {
              print('APPLE LOGIN');
              Navigator.pushNamed(context, route.homePage);
            },
            child: Text('APPLE LOGIN'),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 30)),
            onPressed: () {
              print('GOOGLE LOGIN');
              // Navigator.pushNamed(context, route.homePage);
              Get.offNamed(route.homePage);
            },
            child: Text('GOOGLE LOGIN'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bodyWidget(context),
    );
  }
}
