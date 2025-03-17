import 'package:flutter/material.dart';

class BuildTextField extends StatelessWidget {
  const BuildTextField({super.key, required this.label, required this.initialValue, this.maxLines});

  final String label;
  final String initialValue;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label.toUpperCase(), style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
        const SizedBox(height: 8),
        TextFormField(
          initialValue: initialValue,
          maxLines: maxLines ?? 1,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff6B6E82)),
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xffF7F8FB),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: BorderSide.none),

            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          ),
        ),
      ],
    );
  }
}
