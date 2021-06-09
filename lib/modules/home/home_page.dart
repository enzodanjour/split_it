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
          PreferredSize(
              preferredSize: Size.fromHeight(244),
              child: Container(
                decoration:
                    BoxDecoration(gradient: AppTheme.gradients.background),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Container(
                                      color: Colors.white,
                                      child: Image.network(user.photoUrl!),
                                      width: 56,
                                      height: 56,
                                    ),
                                  ),
                                  SizedBox(width: 16),
                                  Text(user.name!, style: AppTheme.textStyles.name),
                                ],
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    border: Border.all(
                                        color: Color(0xFFFFFFFF), width: 1),
                                    borderRadius: BorderRadius.circular(8)),
                                width: 48,
                                height: 56,
                                child: Center(
                                  child: Text(
                                    '+',
                                    style: TextStyle(
                                        backgroundColor: Colors.transparent,
                                        color: Colors.white,
                                        fontSize: 24),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )),
    );
  }
}
