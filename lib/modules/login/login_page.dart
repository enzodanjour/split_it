import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          Text('Divida suas contas com seus amigos',
          style: GoogleFonts.gotu(),
          ),
          Column(
            children: [
              ListTile(
                leading: Icon(Icons.sim_card),
                title: Text('Faça seu login com uma das contas abaixo'),
              ),
              SizedBox(
                height: 32,
              ),
              ElevatedButton.icon(
                onPressed: (){}, 
                icon: Icon(Icons.email), 
                label: Text("Entrar com google")
              ),
              ElevatedButton.icon(
                onPressed: (){}, 
                icon: Icon(Icons.email), 
                label: Text("Entrar com Apple")
              ),
            ],
          )
        ],
      )
    );
  }
}
