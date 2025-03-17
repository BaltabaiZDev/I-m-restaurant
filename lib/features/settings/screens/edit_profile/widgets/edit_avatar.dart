import 'package:flutter/material.dart';

class EditAvatar extends StatelessWidget {
  const EditAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Container(height: 190, width: 190, child: Image(image: AssetImage('assets/images/profile.png'))),
        Positioned(
          right: 20,
          bottom: 20,
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(color: Colors.red, shape: BoxShape.circle),
            child: const Image(image: AssetImage('assets/images/20.png'), height: 50, width: 50),
          ),
        ),
      ],
    );
  }
}
