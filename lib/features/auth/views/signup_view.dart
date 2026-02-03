import 'package:Hungry/shared/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../../core/constants/app_colors.dart';
import '../../../shared/custom_text.dart';
import '../../../shared/custom_textfield.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

   TextEditingController emailCont = TextEditingController();
   TextEditingController nameCont = TextEditingController();
   TextEditingController passwordCont = TextEditingController();
   TextEditingController confirmpassCont = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.green,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Gap(25.vmin),
                  SvgPicture.asset("assets/images/logo.svg"),
                  Gap(75),
                  CustomTextfield(
                    controller: nameCont,
                    isPass: false,
                    text: "Name",
                  ),
                  Gap(20),
                  CustomTextfield(
                    controller: emailCont,
                    isPass: false,
                    text: "Email Address",
                  ),
                  Gap(20),
                  CustomTextfield(
                    controller: passwordCont,
                    isPass: true,
                    text: "Password",
                  ),
                  Gap(20),
                  CustomTextfield(
                    controller: confirmpassCont,
                    isPass: true,
                    text: "Confirm Password",
                  ),
                  Gap(40),
                  CustomButton(
                    onTap: (){
                      if(formKey.currentState!.validate())
                       print("object");
                    },
                    text: "Sign up",
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

