import 'package:flutter/material.dart';

import 'category_item.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  final List<String> _labels = ["Соусы", "Combo", "Закуски", "Холодные напитки", "Бургеры", "Десерты"];
  int selectedIndex = -1;
  final ScrollController _scrollController = ScrollController();

  final List<GlobalKey> _categoryKeys = List.generate(6, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView(
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          for (int i = 0; i < 6; i++) ...[
            CategoryItem(
              key: _categoryKeys[i],
              iconPath: "assets/images/${i + 8}.png",
              label: _labels[i],
              isSelected: selectedIndex == i,
              onTap: () {
                setState(() {
                  selectedIndex = i;
                });
                Scrollable.ensureVisible(
                  _categoryKeys[i].currentContext!,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.bounceInOut,
                  alignment: 0.5,
                );
              },
            ),
            const SizedBox(width: 16),
          ],
        ],
      ),
    );
  }
}
