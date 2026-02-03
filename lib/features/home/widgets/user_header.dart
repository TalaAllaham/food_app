import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import '../../../core/constants/app_colors.dart';
import '../../../shared/custom_text.dart';

class UserHeader extends StatelessWidget {
  const UserHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset("assets/images/logo.svg",height: 35),
            Gap(5),
            CustomText(
              text: "Hello, Rich Sonic",
              size: 17,
              weight: FontWeight.w500,
              color: Colors.grey.shade600,
            ),
          ],
        ),
        Spacer(),
        CircleAvatar(
          radius: 31,
          backgroundColor: Colors.white,
          foregroundColor: AppColors.green,
          child: Icon(Icons.person_outline,size: 40),
        ),
      ],
    );
  }
}
