import 'package:Hungry/core/constants/app_colors.dart';
import 'package:Hungry/features/cart/widgets/cart_item.dart';
import 'package:Hungry/features/checkout/views/checkout_view.dart';
import 'package:Hungry/shared/custom_button.dart';
import 'package:Hungry/shared/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {

  int itemCount = 20;
  late List<int> quantities;

  @override @override
  void initState() {
    quantities = List.generate(itemCount , (_) => 1);
    super.initState();
  }


  void onAdd(index){
    setState(() {
      quantities[index]++;
    });}

  void onMin(index){
    setState(() {
      if(quantities[index] > 1) {
        quantities[index]--;
      }
    });}

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
                 padding: EdgeInsets.only(bottom: 60,top: 60),
                 itemBuilder: (context, index) => CartItem(
                     text: "Hamburger",
                     desc: "Veggie Burger",
                     image: "assets/images/Burger.png",
                     num: quantities[index],
                     onAdd: ()=> onAdd(index),
                     onMin: ()=> onMin(index),
                 ),
             itemCount: itemCount
             ),
           ),
           Gap(10),
           Expanded(
             flex: 1,
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       CustomText(text: "Total",size: 16),
                       CustomText(text: "\$ 99.19",size: 24),
                     ]),
                 CustomButton(
                     text: "Checkout",
                     width: 150,
                     x: 18,
                     color: AppColors.green,
                     textColor: Colors.white,
                     onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context) {
                       return CheckoutView();
                     }))
                 ),
               ],
             ),
           ),
           Gap(20),
           ]),
       ),
    );
  }
}
