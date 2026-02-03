import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../core/constants/app_colors.dart';
import '../../../shared/custom_button.dart';
import '../../../shared/custom_text.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key, required this.text, required this.desc, required this.image, this.onAdd, this.onMin, this.onRemove, required this.num});

  final String text, desc, image;
  final int num;
  final Function()? onAdd;
  final Function()? onMin;
  final Function()? onRemove;


  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(image,width: 100,height: 100),
                CustomText(text: text,weight: FontWeight.w700,size: 16),
                CustomText(text: desc,size: 16),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      foregroundColor: Colors.white,
                      backgroundColor: AppColors.green,
                      radius: 23,
                      child: IconButton(
                          onPressed: onAdd,
                          icon: Icon(Icons.add,color: Colors.white)
                      ),
                    ),
                    Gap(12),
                    CustomText(text: "${num}",weight: FontWeight.w500,size: 16),
                    Gap(12),
                    CircleAvatar(
                      backgroundColor: AppColors.green,
                      radius: 23,
                      child: IconButton(
                          onPressed: onMin,
                          icon: Icon(Icons.remove,color: Colors.white)
                      ),
                    ),
                  ],
                ),
                Gap(35),
                CustomButton(
                  onTap: onRemove,
                  width: 130,
                  height: 50,
                  text: "Remove",
                  color: AppColors.green,
                  textColor: Colors.white,
                  x: 18,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
