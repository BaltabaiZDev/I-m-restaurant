import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, stops: [0.2, 0.3, 0.8], colors: [Color(0xffFCB614), Color(0xffFCB614), Color(0xffE52723)]),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/big_burger.png', width: MediaQuery.of(context).size.width),
              Text('Укажите телефон, чтобы\nвойти в профиль', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 23, color: Colors.white), textAlign: TextAlign.center),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 26),
                child: Container(
                  height: 57,
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12)),
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                  child: Row(
                    children: [
                      // Flag Icon (replace with your asset path)
                      Image.asset('assets/images/3.png', width: 24, height: 24),
                      const SizedBox(width: 8),
                      // Country Code
                      const Text('+7', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                      const SizedBox(width: 8),
                      // Phone Number TextField
                      Expanded(child: TextField(keyboardType: TextInputType.phone, decoration: const InputDecoration(border: InputBorder.none, hintText: 'Телефон'))),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 16),

              // 2) White Button for Google Sign-In
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 26),
                child: Container(
                  height: 57,
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12)),
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Google Icon (replace with your asset path or an Icon widget)
                      const Text('Вход через', style: TextStyle(fontSize: 16)),
                      Image.asset('assets/images/4.png', width: 24, height: 24),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
