import 'package:flutter/material.dart';
import 'package:split_it/modules/login/models/user_model.dart';
import 'package:split_it/themes/app_theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final UserModel user =
        ModalRoute.of(context)!.settings.arguments as UserModel;
    return Scaffold(
      appBar: 
      // AppBar(
      //   leading: ClipRRect(
      //     borderRadius: BorderRadius.circular(8),
      //     child: Image.network(user.photoUrl!)
      //   ),
      //   title: Text(user.name!),
      // ),
      PreferredSize(
        preferredSize: Size(double.infinity,244),
        
        child: Container(
          decoration: BoxDecoration(
            gradient: AppTheme.gradients.background
          ),
        )
      ),
    );
  }
}
