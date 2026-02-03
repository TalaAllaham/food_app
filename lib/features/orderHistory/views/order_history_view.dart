import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../core/constants/app_colors.dart';
import '../../../shared/custom_button.dart';
import '../../../shared/custom_text.dart';

class OrderHistoryView extends StatelessWidget {
  const OrderHistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        toolbarHeight: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        child:
        Column(
            children: [
              Expanded(
                flex: 10,
                child: ListView.builder(
                    padding: EdgeInsets.only(bottom: 120,top: 10),
                    itemCount: 3,
                    itemBuilder: (context, index) => Card(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 15),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset("assets/images/Burger.png",width: 100,height: 100),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(text: "Hamburger",weight: FontWeight.w700,size: 16),
                                    CustomText(text: "Qty: X3",size: 16),
                                    CustomText(text: "Price: 20\$",size: 16),
                                  ],
                                )
                              ],
                            ),
                            Gap(20),
                            CustomButton(
                                text: "Order Again",
                                width: double.infinity,
                                x: 18,
                                height: 53,
                                color: Colors.grey.shade400,
                                textColor: Colors.black,
                                onTap: (){}
                            ),
                          ],
                        ),
                      ),
                    )
                ),
              ),
                ]),
              ),
    );
  }
}
