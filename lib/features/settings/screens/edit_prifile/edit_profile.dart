import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_am_restaurant/features/settings/screens/edit_prifile/widgets/build_text_field.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Жоғарғы панель (AppBar)
      appBar: AppBar(automaticallyImplyLeading: false, backgroundColor: Colors.white),

      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  // Сол жақтағы IconButton
                  Positioned(
                    left: 0,
                    child: IconButton(
                      onPressed: () => Get.back(),
                      icon: const Icon(Icons.arrow_back_ios, size: 30),
                      color: Colors.black,
                    ),
                  ),
                  // Орталықтағы текст
                  const Center(child: Text("Оплата", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600))),
                  // Оң жаққа бос орын (егер теңестіргіңіз келсе)
                  Positioned(right: 0, child: SizedBox(width: 30)),
                ],
              ),
              SizedBox(height: 50),
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  // Дөңгелек сурет
                  Container(height: 190, width: 190, child: Image(image: AssetImage('assets/images/profile.png'))),
                  // Қызыл қарындаш иконкасы
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
              ),
              const SizedBox(height: 16),

              // Төрт өріс (Имя Фамилия, Почта, Номер телефона, Bio)
              BuildTextField(label: "Имя Фамилия", initialValue: "Jennie Kim"),
              const SizedBox(height: 16),
              BuildTextField(label: "Почта", initialValue: "Rybyjane@gmail.com"),
              const SizedBox(height: 16),
              BuildTextField(label: "Номер телефона", initialValue: "87051485964"),
              const SizedBox(height: 16),
              BuildTextField(label: "Bio", initialValue: "I love fast food!",maxLines: 4,),
              const SizedBox(height: 32),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: const Text("Сохранить", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
