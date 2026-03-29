import 'package:flutter/material.dart';
import '../core/constants/app_colors.dart';
import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onTap,
    this.text,
    this.width,
    this.color,
    this.textColor,
    this.x,
    this.height,
    this.icon,
    this.cBorder
  });

  final Function()? onTap;
  final String? text;
  final double? width;
  final double? height;
  final double? x;
  final Color? color;
  final Color? cBorder;
  final Color? textColor;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height ?? 55,
        width: width ?? 320,
        decoration: BoxDecoration(
          color: color ?? Colors.white,
          border: Border.all(color: cBorder ?? AppColors.green),
          borderRadius: BorderRadius.circular(x ?? 8),

        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomText(
                text: text ?? '',
                weight: FontWeight.w700,
                color: textColor ?? AppColors.green,
                size: 18,
              ),
              if (icon != null) ...[
                const SizedBox(width: 8),
                Icon(icon, color: textColor ?? AppColors.green),
              ],
            ],
          ),
        ),
      ),
    );
  }
}