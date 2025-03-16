import 'package:flutter/material.dart';

class LogoutConfirmationSheet extends StatelessWidget {
  final VoidCallback onConfirm;

  const LogoutConfirmationSheet({super.key, required this.onConfirm});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      // Sheet биіктігі
      height: 270,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      padding: const EdgeInsets.all(16),
      duration: Duration(milliseconds: 1000),
      child: Column(

        children: [
          const SizedBox(height: 8),
          const Text("Выйти?", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),


          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(

                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  ),
                  onPressed: onConfirm,
                  child: const Text("Да", style: TextStyle(color: Colors.white, fontSize: 16)),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  ),
                  onPressed: () {
                    Navigator.pop(context); // Sheet-ті жабу
                  },
                  child: const Text("Отмена", style: TextStyle(color: Colors.white, fontSize: 16)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
