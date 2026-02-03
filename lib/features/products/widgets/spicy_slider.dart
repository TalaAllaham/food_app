import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/constants/app_colors.dart';
import '../../../shared/custom_text.dart';

class SpicySlider extends StatefulWidget {
  const SpicySlider({super.key, required this.value, required this.onChanged});

  final double value;
  final Function(double) onChanged;

  @override
  State<SpicySlider> createState() => _SpicySliderState();
}

class _SpicySliderState extends State<SpicySlider> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 2),
      child: Column(
        children: [
          Gap(30),
          Row(
            children: [
              Image.asset("assets/images/food_details.png",height: 250),
              Column(
                children: [
                  CustomText(text: "Customize Your Burger\n to Your Tests.\n Ultimate Experience\n Spicey"),
                  Slider(
            activeColor: AppColors.green,
            max: 1,
            min: 0,
            value: widget.value,
            inactiveColor: Colors.grey.shade300,
            onChanged: widget.onChanged),
                  Row(
                    children: [
                      CustomText(text: "❄️"),
                      Gap(100),
                      CustomText(text: "🌶️")
                    ],
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
