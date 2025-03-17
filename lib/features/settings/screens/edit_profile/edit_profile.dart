import 'package:flutter/material.dart';
import 'package:i_am_restaurant/common/widgets/profile_head.dart';
import 'package:i_am_restaurant/features/settings/screens/edit_profile/widgets/build_text_field.dart';
import 'package:i_am_restaurant/features/settings/screens/edit_profile/widgets/edit_avatar.dart';
import 'package:i_am_restaurant/features/settings/screens/edit_profile/widgets/save_item.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false, backgroundColor: Colors.white),

      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ProfileHead(),
              SizedBox(height: 50),
              EditAvatar(),
              const SizedBox(height: 16),

              BuildTextField(label: "Имя Фамилия", initialValue: "Jennie Kim"),
              const SizedBox(height: 16),
              BuildTextField(label: "Почта", initialValue: "Rybyjane@gmail.com"),
              const SizedBox(height: 16),
              BuildTextField(label: "Номер телефона", initialValue: "87051485964"),
              const SizedBox(height: 16),
              BuildTextField(label: "Bio", initialValue: "I love fast food!", maxLines: 4),
              const SizedBox(height: 32),

              SaveItem(),
            ],
          ),
        ),
      ),
    );
  }
}
