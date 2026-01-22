import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';
import '../../../shared/custom_text.dart';

class FoodCategory extends StatefulWidget {
   const FoodCategory({super.key, required this.category, required this.selectedIndex, required this.onSelect});

  final List category;
  final int selectedIndex;
  final   Function(int) onSelect;


  @override
  State<FoodCategory> createState() => _FoodCategoryState();
}

class _FoodCategoryState extends State<FoodCategory> {


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children:
          List.generate(
              widget.category.length, (index) {
            return GestureDetector(
              onTap: () {
                widget.onSelect(index);
              },
              child:
              Container(
                margin: EdgeInsets.only( right: 8),
                padding: EdgeInsets.symmetric( horizontal: 27,vertical: 15),
                decoration: BoxDecoration(
                  color: widget.selectedIndex == index ? AppColors.green : Color(
                      0xffe6e8ec),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: CustomText(
                    text: widget.category[index],
                    color: widget.selectedIndex == index ? Colors.white : Colors.grey.shade700,
                    weight: FontWeight.w500,
                  ),
                ),
              ),
            );}
          )),
    );
  }
}
