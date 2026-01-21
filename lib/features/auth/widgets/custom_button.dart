import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';
import '../../../shared/custom_text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap, this.text});

  final Function()? onTap;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
    onTap: onTap,
    child: Container(
    height: 55,
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(8),
    ),
    child: Center(
    child: CustomText(
    text: text ?? '',
    weight: FontWeight.w700,
    color: AppColors.green,
    size: 18,
    ))));
  }
}
