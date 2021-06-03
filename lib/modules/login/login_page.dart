import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:split_it/modules/login/login_controller.dart';
import 'package:split_it/modules/login/login_services.dart';
import 'package:split_it/modules/login/login_state.dart';
import 'package:split_it/modules/login/widgets/social_button.dart';
import 'package:split_it/themes/app_theme.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //afirma que inicializará mais tarde
  late LoginController controller;

  @override
  void initState() {
    
    controller = LoginController(
      service: LoginServiceImpl(),
      onUpdate: () {
      if (controller.state is LoginStateSucess) {
        final user = (controller.state as LoginStateSucess).user;
        Navigator.pushReplacementNamed(context, "/home", arguments: user);
      } else {
        setState(() {});
      }
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Row(
            children: [
              Container(
                width: 236,
                child: Text('Divida suas contas com seus amigos',
                    style: AppTheme.textStyles.title),
              ),
            ],
          ),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: ListTile(
                leading: Image.asset("assets/images/emoji.png"),
                title: Text(
                  'Faça seu login com uma das contas abaixo',
                  style: AppTheme.textStyles.button,
                ),
              ),
            ),
            SizedBox(
              height: 32,
            ),
            if (controller.state is LoginStateLoading) ...[
              CircularProgressIndicator(),
            ] else if (controller.state is LoginStateFailure) ...[
              Text((controller.state as LoginStateFailure).message,
                  style: AppTheme.textStyles.button),
            ] else
              SocialButton(
                imagePath: 'assets/images/google.png',
                label: 'Entrar com Google',
                onTap: () async {
                  controller.googleSignIn();
                },
              ),
            SizedBox(
              height: 12,
            ),
            //TODO VER DEPOIS ESSE LOGIN APPLE
            // SocialButton(
            //   imagePath: 'assets/images/apple.png',
            //   label: 'Entrar com Apple',
            //   onTap: () {},
            // )
          ],
        )
      ],
    ));
  }
}
