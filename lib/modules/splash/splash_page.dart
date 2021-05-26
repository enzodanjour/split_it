import 'package:flutter/material.dart';
import 'package:split_it/themes/app_theme.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: true,
      child: Scaffold(
        backgroundColor: AppTheme.colors.background,
        body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          decoration: BoxDecoration(gradient: AppTheme.gradients.background),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 24,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Opacity(
                        opacity: 0.2,
                        child: Image.asset(
                          'assets/images/retangulo-dir.png',
                          width: 198,
                          height: 98,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    children: [
                      Opacity(
                        opacity: 0.2,
                        child: Image.asset(
                          'assets/images/retangulo-dir.png',
                          width: 128,
                          height: 112,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Image.asset(
                'assets/images/logo.png',
                width: 128,
                height: 112,
              ),
              SizedBox(
                height: 24,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Opacity(
                        opacity: 0.2,
                        child: Image.asset(
                          'assets/images/retangulo-esq.png',
                          width: 128,
                          height: 112,
                          
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Opacity(
                        opacity: 0.2,
                        child: Image.asset(
                          'assets/images/retangulo-esq.png',
                          width: 198,
                          height: 98,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
