import 'package:flutter/material.dart';

class FoodCardItem extends StatelessWidget {
  final String image;
  final String nameOfFood;
  final String time;
  final String? price;

  const FoodCardItem({super.key, required this.image, required this.nameOfFood, required this.time, this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      width: 190,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(color: Colors.black.withValues(alpha: 0.25), blurRadius: 4, spreadRadius: 2, offset: Offset(0, 10)),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            child: ClipRRect(
              borderRadius: const BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16)),
              child: Image(image: AssetImage(image), fit: BoxFit.cover, height: 140, width: double.infinity),
            ),
          ),

          Positioned(top: 15, right: 15, child: Icon(Icons.star, color: Colors.amber[700])),

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: 60,
            child: Container(
              decoration: BoxDecoration(color: Colors.red),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(nameOfFood, style: TextStyle(color: Colors.amber, fontWeight: FontWeight.normal)),

                        Row(
                          children: [
                            Icon(Icons.access_time, size: 14, color: Colors.amber),
                            SizedBox(width: 4),
                            Text(time, style: TextStyle(color: Colors.white, fontSize: 12)),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 40,
            right: 12,
            child: Container(
              width: 30,
              height: 30,
              decoration: const BoxDecoration(color: Colors.orange, shape: BoxShape.circle),
              child: const Icon(Icons.play_arrow, color: Colors.white, size: 18),
            ),
          ),
          if (price != null)
            Positioned(
              bottom: 12,
              right: 12,
              child: Text(price!, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 12)),
            ),
        ],
      ),
    );
  }
}
