import 'package:Hungry/core/constants/app_colors.dart';
import 'package:Hungry/features/auth/views/signup_view.dart';
import 'package:Hungry/shared/custom_text.dart';
import 'package:Hungry/shared/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../../root.dart';
import '../../../shared/custom_button.dart';

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
        backgroundColor: Colors.white,
        body: Center(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Gap(200),
                SvgPicture.asset("assets/images/logo.svg",color: AppColors.green),
                Gap(3.vmin),
                CustomText(
                    text: "Welcome Back, Discover The Fast Food",
                    color: AppColors.green, size: 16.sp),
                Gap(100),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: AppColors.green,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          topLeft: Radius.circular(30),
                        )
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Gap(30),
                          CustomTextfield(
                              controller : emailCont,
                              isPass: false,
                              text: "Email Address"),
                          Gap(15),
                          CustomTextfield(
                              controller : passwordCont,
                              isPass: true,
                              text: "Password"),
                          Gap(20),
                          CustomButton(
                            onTap: (){
                              if(formKey.currentState!.validate())
                                print("object");
                            },
                            text: "Login",
                            textColor: Colors.white,
                            color: Colors.transparent,
                          ),
                          Gap(15),
                          CustomButton(
                            onTap: (){
                              Navigator.push(
                                  context, MaterialPageRoute(builder: (_) => SignupScreen()));
                            },
                            text: "Go to Sign up ?",
                          ),
                          Gap(20),
                          GestureDetector(
                            onTap: () => Navigator.push(
                                context, MaterialPageRoute(builder: (_)=> Root())),
                            child: CustomText(text: "Continue as a guest ?",color: Colors.orange,weight: FontWeight.bold,size: 13),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
