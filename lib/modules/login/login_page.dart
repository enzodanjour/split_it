import 'package:flutter/material.dart';
import 'package:split_it/modules/login/widgets/social_button.dart';
import 'package:split_it/themes/app_theme.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
            SocialButton(
              imagePath: 'assets/images/google.png',
              label: 'Entrar com Google',
              onTap: () {},
            ),
            SizedBox(
              height: 12,
            ),
            SocialButton(
              imagePath: 'assets/images/apple.png',
              label: 'Entrar com Apple',
              onTap: () {},
            )
          ],
        )
      ],
    ));
  }
}
