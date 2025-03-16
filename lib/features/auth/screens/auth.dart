import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_am_restaurant/features/auth/controllers/auth_controller.dart';
import 'package:i_am_restaurant/features/auth/screens/otp.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AuthController());
    return Scaffold(
      backgroundColor: Colors.transparent,
      resizeToAvoidBottomInset: true, // <-- маңызды
      body: Container(
        height: MediaQuery.of(context).size.height, // маңызды
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.2, 0.3, 0.8],
            colors: [Color(0xffFCB614), Color(0xffFCB614), Color(0xffE52723)],
          ),
        ),
        child: SafeArea(
          child: Stack(
            children: [
              SingleChildScrollView(
                padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom), // <-- маңызды
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 20),
                    // Сурет
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Image.asset(
                        'assets/images/big_burger.png',
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Укажите телефон, чтобы\nвойти в профиль',
                      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 23, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 26),
                      child: Container(
                        height: 57,
                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12)),
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                        child: Row(
                          children: [
                            Image.asset('assets/images/3.png', width: 24, height: 24),
                            const SizedBox(width: 8),
                            const Text('+7', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                            const SizedBox(width: 8),
                            Expanded(
                              child: TextField(
                                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                onChanged: (value) {
                                  // Егер 10 сан енгізілсе, isPhoneComplete true болады
                                  if (value.trim().length == 10) {
                                    controller.isPhoneComplete.value = true;
                                  } else {
                                    controller.isPhoneComplete.value = false;
                                  }
                                },
                                onSubmitted: (value) {
                                  if (value.trim().isNotEmpty) {
                                    Get.to(() => const OtpScreen());
                                  }
                                },
                                focusNode: controller.phoneFocusNode,
                                keyboardType: TextInputType.phone,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Телефон',
                                  // Сурет suffix-те Obx арқылы өзгеріп отырады
                                  suffix: Obx(
                                    () => Image.asset(
                                      controller.isPhoneComplete.value
                                          ? 'assets/images/6.png' // 10 сан болғанда жаңа сурет
                                          : 'assets/images/5.png', // әдепкі сурет
                                      height: 22,
                                      width: 22,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    // Google арқылы кіру
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 26),
                      child: Container(
                        height: 57,
                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12)),
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Вход через', style: TextStyle(fontSize: 16)),
                            Image.asset('assets/images/4.png', width: 24, height: 24),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
              // Арроу батырмасы: егер controller.showStartButtons true болса көрсетіледі.
              Obx(
                () =>
                    controller.showStartButtons.value
                        ? Positioned(
                          top: 16,
                          left: 20,
                          child: IconButton(
                            onPressed: () {
                              if (MediaQuery.of(context).viewInsets.bottom > 0) {
                                FocusScope.of(context).unfocus();
                              } else {
                                Get.back();
                              }
                            },
                            icon: const Icon(Icons.arrow_back_ios),
                            color: Colors.black,
                          ),
                        )
                        : const SizedBox(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
