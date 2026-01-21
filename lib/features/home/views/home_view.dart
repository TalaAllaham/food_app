import 'package:Hungry/shared/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../../core/constants/app_colors.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Gap(20.vmin),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset("assets/images/logo.svg",color: AppColors.green,height: 35),
                      Gap(5),
                      CustomText(
                        text: "Hello, Rich Sonic",
                        size: 17,
                        weight: FontWeight.w500,
                        color: Colors.grey.shade700,
                      ),
                    ],
                  ),
                  Spacer(),
                  CircleAvatar(
                    radius: 31,
                  ),
                ],
              ),
              Gap(20),
              Material(
                shadowColor: Colors.grey,
                elevation: 2,
                borderRadius: BorderRadius.circular(16),
                child: TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(color: Colors.white)
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(color: Colors.white)
                  ),
                  prefixIcon: Icon(CupertinoIcons.search),

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
