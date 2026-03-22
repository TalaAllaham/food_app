import 'package:Hungry/core/constants/app_colors.dart';
import 'package:Hungry/shared/custom_button.dart';
import 'package:Hungry/features/products/widgets/spicy_slider.dart';
import 'package:Hungry/shared/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../widgets/topping_card.dart';

class ProductDetailsView extends StatefulWidget {
  const ProductDetailsView({super.key});

  @override
  State<ProductDetailsView> createState() => _ProductDetailsViewState();
}

class _ProductDetailsViewState extends State<ProductDetailsView> {
   double value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(Icons.arrow_back)),
      ),
      body: Padding(
      padding: EdgeInsets.symmetric(horizontal: 2),
          child: SingleChildScrollView(
            child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            SpicySlider(
            value: value,
            onChanged: (v)=> setState(() {value = v;})),
                  Gap(30),
                  CustomText(text: "Toppings",size: 20,weight: FontWeight.bold),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
              children:
                    List.generate(4, (index) {
            return ToppingCard(
                onAdd: () {  },
                img: "assets/images/tomato.png",
                text: "Tomato"
            );}
              )),
                  ),
                  Gap(30),
                  CustomText(text: "Side Options",size: 20,weight: FontWeight.bold),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
              children:
                    List.generate(4, (index) {
            return ToppingCard(
                onAdd: () {  },
                img: "assets/images/tomato.png",
                text: "Tomato"
            );}
              )),
                  ),
              Gap(30)]))),
              bottomSheet: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                    boxShadow: [ BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0, 1),
                        blurRadius: 10
                    )]
                ),
                height: 120,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomText(text: "Total",size: 16),
                            CustomText(text: "\$ 188",size: 24),
                          ]),
                      CustomButton(
                          text: "Add to cart",
                          width: 130,
                          x: 18,
                          color: AppColors.green,
                          textColor: Colors.white,
                          onTap: () {}
                          )
                    ],
                  ),
                ),
              ),
    );
  }
}
