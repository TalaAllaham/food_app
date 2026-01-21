import 'package:Hungry/core/constants/app_colors.dart';
import 'package:Hungry/shared/custom_text.dart';
import 'package:Hungry/shared/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../widgets/custom_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController emailCont = TextEditingController();
  TextEditingController passwordCont = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: AppColors.green,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Gap(25.vmin),
                  SvgPicture.asset("assets/images/logo.svg"),
                  Gap(3.vmin),
                  CustomText(
                      text: "Welcome Back, Discover The Fast Food",
                      color: Colors.white, size: 16.sp, weight: FontWeight.normal),
                  Gap(75),
                  CustomTextfield(
                      controller : emailCont,
                      isPass: false,
                      text: "Email Address"),
                  Gap(20),
                  CustomTextfield(
                      controller : passwordCont,
                      isPass: true,
                      text: "Password"),
                  Gap(40),
                  CustomButton(
                    onTap: (){
                      if(formKey.currentState!.validate())
                        print("object");
                    },
                    text: "Login",
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
