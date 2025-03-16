import 'package:flutter/material.dart';

import '../controllers/otp_controller.dart';

class OtpItem extends StatelessWidget {
  final OtpController controller;
  final TextEditingController textController;
  final FocusNode currentFocus;
  final FocusNode? previousFocus;
  final FocusNode? nextFocus;

  const OtpItem({
    super.key,
    required this.controller,
    required this.textController,
    required this.currentFocus,
    this.previousFocus,
    this.nextFocus,
  });

  @override
  Widget build(BuildContext context) {

    return ValueListenableBuilder<TextEditingValue>(
      valueListenable: textController,
      builder: (context, value, child) {
        final isFilled = value.text.isNotEmpty;
        return Container(
          width: 50,
          height: 60,
          decoration: BoxDecoration(
            color: Color(0xffFDE1A1),
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: isFilled ? Colors.red : Colors.transparent, width: isFilled ? 1 : 0),
          ),
          child: Center(
            child: TextField(
              controller: textController,
              focusNode: currentFocus,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              maxLength: 1,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              decoration: const InputDecoration(border: InputBorder.none, counterText: ''),
              onChanged: (val) {
                controller.onDigitChanged(textController, currentFocus, previousFocus, nextFocus, val);
              },
            ),
          ),
        );
      },
    );
  }
}
