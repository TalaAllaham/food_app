import 'package:Hungry/features/checkout/widgets/order_details_widget.dart';
import 'package:Hungry/shared/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../core/constants/app_colors.dart';
import '../../../shared/custom_button.dart';

class CheckoutView extends StatefulWidget {
  const CheckoutView({super.key});

  @override
  State<CheckoutView> createState() => _CheckoutViewState();
}

class _CheckoutViewState extends State<CheckoutView> {

  String selectedMethod = 'cash';
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
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                OrderDetailsWidget(
                  fees: "3.5", order: '165.2', taxes: '15', total: '550.2'),
                Gap(70),
                CustomText(text: "Payment methods",size: 20,weight: FontWeight.bold),
                ListTile(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  contentPadding: EdgeInsets.symmetric(vertical: 8,horizontal: 16),
                  tileColor: Color(0xff3C2F2F),
                  title: CustomText(text: "Cash on delivery",color: Colors.white),
                  leading: Image.asset("assets/images/dollar.png",width: 50,),
                  trailing: Radio(
                      activeColor: Colors.white,
                      value: "cash",
                      groupValue: selectedMethod,
                      onChanged: (v) => setState(() => selectedMethod = v!)
                ),
                  onTap: () => setState(() => selectedMethod = 'cash')),
                Gap(10),
                ListTile(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  contentPadding: EdgeInsets.symmetric(vertical: 2,horizontal: 16),
                  tileColor: Colors.blue.shade900,
                  title: CustomText(text: "Debit Card",color: Colors.white),
                  subtitle: CustomText(text: "**** **** 1957",color: Colors.white),
                  leading: Image.asset("assets/images/visa.png",width: 50),
                  trailing: Radio(
                      activeColor: Colors.white,
                      value: "visa",
                      groupValue: selectedMethod,
                      onChanged: (v) => setState(() => selectedMethod = v!)
                ),
                  onTap: () => setState(() => selectedMethod = 'visa')),
                Gap(5),
                Row(
                  children: [
                    Checkbox(
                        activeColor: Colors.red,
                        checkColor: Colors.white,
                        value: true,
                        onChanged: (_){}),
                    CustomText(text: "Save card details for future payments")
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
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
                    CustomText(text: "Total Price",size: 16),
                    CustomText(text: "\$ 99.19",size: 24),
                  ]),
              CustomButton(
                  text: "Pay Now",
                  width: 130,
                  x: 18,
                  color: AppColors.green,
                  textColor: Colors.white,
                  onTap: () => showDialog(
                       context: context,
                       builder: (_){
                         return Dialog(
                           backgroundColor: Colors.transparent,
                           child: Padding(
                             padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 200),
                             child: Container(
                               padding: EdgeInsets.all(10),
                               decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(30),
                                   color: Colors.white,
                                   boxShadow: [ BoxShadow(
                                       color: Colors.grey,
                                       offset: Offset(0, 1),
                                       blurRadius: 20
                                   )]
                               ),
                               child: Column(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: [
                                   CircleAvatar(
                                     backgroundColor: AppColors.green,
                                     radius: 40,
                                     child: Icon(CupertinoIcons.checkmark_alt,size: 50,color: Colors.white),
                                   ),
                                   Gap(10),
                                   CustomText(text: "Success!",color: AppColors.green,weight: FontWeight.bold,size: 20),
                                   Gap(3),
                                   CustomText(text: "Your payment was successful.\nA receipt for this purchase has\nbeen sent to your email.",color: Colors.grey.shade400,size: 12),
                                   Gap(10),
                                   CustomButton(
                                    onTap: () => Navigator.pop(context),
                                    text: "Close",
                                    width: 200,
                                    x: 18,
                                    color: AppColors.green,
                                    textColor: Colors.white,
                                   )],
                               ),
                             ),
                           ),
                         );
                       }
                  ))
            ],
          ),
        ),
      ),
    );
  }
}



