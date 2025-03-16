import 'package:flutter/material.dart';
import 'package:i_am_restaurant/utils/constants/colors.dart';

class CategoryItem extends StatelessWidget {
  final String iconPath;
  final String label;
  final bool isSelected;
  final VoidCallback? onTap;

  const CategoryItem({
    super.key,
    required this.iconPath,
    required this.label,
    this.isSelected = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {

    final double containerHeight = isSelected ? 45 : 40;

    final double iconSize = isSelected ? 40 : 32;

    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      focusColor: Colors.transparent,
      borderRadius: BorderRadius.circular(20),
      onTap: onTap,
      child: SizedBox(

        height: 50,

        child: Center(
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOut,

            height: containerHeight,

            padding:  EdgeInsets.symmetric(horizontal: isSelected ? 16 : 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: TColors.secondary,
              border: isSelected ? Border.all(color: Colors.black, width: 1) : null,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [

                Container(
                  width: iconSize,
                  height: iconSize,
                  decoration: BoxDecoration(
                    color: TColors.secondary,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Image.asset(
                      iconPath,
                      width: iconSize - 8,
                      height: iconSize - 8,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  label,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: isSelected ? 16 : 14,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
