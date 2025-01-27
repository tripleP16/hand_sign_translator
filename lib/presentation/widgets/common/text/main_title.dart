import 'package:flutter/material.dart';
import 'package:hand_sign_translator/config/theme/text_styles.dart';

class MainTitle extends StatelessWidget {
  final String title;
  const MainTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppTextStyles.heading,
    );
  }
}
