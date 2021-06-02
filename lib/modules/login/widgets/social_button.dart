import 'package:flutter/material.dart';
import 'package:split_it/themes/app_theme.dart';

class SocialButton extends StatelessWidget {
  final String imagePath;
  final String label;
  final VoidCallback onTap;
  const SocialButton({Key? key, required this.imagePath, required this.label,required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.fromBorderSide(
                  BorderSide(color: AppTheme.colors.border))),
          child: Row(
            children: [
              Container(
                  width: 57,
                  height: 57,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 16,
                      ),
                      Image.asset(imagePath),
                      SizedBox(
                        width: 16,
                      ),
                      Container(
                        width: 1,
                        color: AppTheme.colors.border,
                      ),
                    ],
                  )),
              Container(width: 1, color: AppTheme.colors.border),
              Expanded(child: Container()),
              Text(
                label,
                style: AppTheme.textStyles.button,
              ),
              Expanded(child: Container()),
            ],
          ),
        ),
      ),
    );
  }
}
