import 'package:flutter/material.dart';
import 'package:hand_sign_translator/config/theme/text_styles.dart';

class MainTitle extends StatelessWidget {
  final String title;
  final TextAlign alignment;
  const MainTitle({
    super.key,
    required this.title,
    this.alignment = TextAlign.center,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppTextStyles.heading,
    );
  }
}
