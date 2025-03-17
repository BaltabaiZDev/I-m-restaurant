import 'package:flutter/material.dart';

import 'build_item.dart';

class ProfileComponent extends StatelessWidget {
  const ProfileComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color(0xffF6F8FA), borderRadius: BorderRadius.circular(16)),
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            BuildItem(title: 'Jennie Kim', image: 'assets/images/Name.png', subtitle: 'Имя Фамилия'),

            const SizedBox(height: 16),

            BuildItem(title: 'Почта', image: 'assets/images/Email.png', subtitle: 'Rybyjane@gmail.com'),

            const SizedBox(height: 16),

            BuildItem(title: '87051485964', image: 'assets/images/Phone.png', subtitle: 'Номер телефона'),
          ],
        ),
      ),
    );
  }
}
