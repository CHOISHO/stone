import 'package:flutter/material.dart';
import 'package:diary/route/route.dart' as route;

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return _LoginBody();
  }
}

class _LoginBody extends StatelessWidget {
  const _LoginBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _LoginButton(label: 'APPLE', icon: Icons.approval),
            _LoginButton(label: 'GOOGLE', icon: Icons.ac_unit),
          ],
        ),
      ),
    );
  }
}

class _LoginButton extends StatelessWidget {
  final String label;
  final IconData icon;

  const _LoginButton({
    Key? key,
    required this.label,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, 50),
      ),
      onPressed: () {
        print('$label LOGIN');
        Navigator.pushNamed(context, route.homePage);
      },
      child: Row(
        children: [Icon(icon), Text(label)],
      ),
    );
  }
}
