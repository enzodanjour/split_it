import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:split_it/modules/login/login_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Split-it',
      home: LoginPage(),
    );
  }
}
