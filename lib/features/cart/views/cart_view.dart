import 'package:Hungry/core/constants/app_colors.dart';
import 'package:Hungry/features/cart/widgets/cart_item.dart';
import 'package:Hungry/features/checkout/views/checkout_view.dart';
import 'package:Hungry/shared/custom_button.dart';
import 'package:Hungry/shared/custom_text.dart';
import 'package:flutter/material.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {

  int itemCount = 3;
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
     body: Padding(
       padding: EdgeInsets.symmetric(horizontal: 15),
       child:
           Column(
             children: [
           Expanded(
             flex: 5,
             child: ListView.builder(
                 padding: EdgeInsets.only(bottom: 60,top: 40),
                 itemBuilder: (context, index) => Padding(
                   padding: const EdgeInsets.only(bottom: 8.0),
                   child: CartItem(
                       text: "Hamburger",
                       desc: "Veggie Burger",
                       image: "assets/images/Burger.png",
                       num: quantities[index],
                       onAdd: ()=> onAdd(index),
                       onMin: ()=> onMin(index),
                   ),
                 ),
             itemCount: itemCount
             ),
           ),
           ]),
       ),
      bottomSheet: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                topLeft: Radius.circular(30)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0, 1),
                blurRadius: 10
            )]
        ),
        height: 90,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                  text: "Check out",
                  width: 130,
                  x: 18,
                  color: AppColors.green,
                  textColor: Colors.white,
                  onTap: () =>
                    Navigator.push(context, MaterialPageRoute(builder: (_)=> CheckoutView()))
              )
            ],
          ),
        ),
      ),
    );
  }
}
