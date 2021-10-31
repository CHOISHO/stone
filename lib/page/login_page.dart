// ignore_for_file: prefer_const_constructors

import 'package:diary/controller/lunch_controller.dart';
import 'package:diary/page/home_page.dart';
import 'package:diary/route/pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LoginButton(
                label: '애플 로그인',
                icon: Icons.circle,
                onPressed: () => Get.toNamed(Routes.home),
              ),
              LoginButton(
                label: '구글 로그인',
                icon: Icons.circle,
                onPressed: () => Get.toNamed(Routes.home),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final VoidCallback onPressed;

  const LoginButton({
    required this.label,
    required this.icon,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Row(
        children: [
          Icon(icon),
          Container(
            margin: const EdgeInsets.only(left: 10),
            child: Text(label),
          ),
        ],
      ),
    );
  }
}
