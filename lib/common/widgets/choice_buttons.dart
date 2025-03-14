import 'package:flutter/material.dart';
import 'package:i_am_restaurant/utils/constants/text_styles.dart';

class ChoiceButtons extends StatelessWidget {
  final String language;
  final VoidCallback onPressed;
  final Color backgroundColor;

  const ChoiceButtons({super.key, required this.language, required this.onPressed, required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 57,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        ),
        child: Text(language, style: TTextStyles.h6.copyWith(color: Colors.white)),
      ),
    );
  }
}
