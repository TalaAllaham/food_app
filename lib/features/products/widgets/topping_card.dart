import 'package:Hungry/shared/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../core/constants/app_colors.dart';

class ToppingCard extends StatelessWidget {
  const ToppingCard({super.key, required this.onAdd, required this.text, required this.img});

  final Function() onAdd;
  final String text;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 100,
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: AppColors.brown
            ),
          ),
          Container(
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 10,
            spreadRadius: 2,
            offset: Offset(0, 4),
          )],
                borderRadius: BorderRadius.circular(30),
                color: Colors.white
            ),
            child: ClipRRect(
              child: Image.asset(img,width: 80,height: 65),
            ),
          ),
          Positioned(
            bottom: 13,
            right: 10,
            child: Row(
              children: [
                CustomText(text: text,size: 12,weight: FontWeight.bold,color: Colors.white,),
                Gap(5),
                GestureDetector(
                  onTap: onAdd,
                  child: CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.red,
                      child: Icon(Icons.add,size: 20,color: Colors.white,)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
