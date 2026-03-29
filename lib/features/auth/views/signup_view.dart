import 'package:Hungry/features/auth/views/login_view.dart';
import 'package:Hungry/shared/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../../core/constants/app_colors.dart';
import '../../../root.dart';
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

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Gap(100),
              SvgPicture.asset("assets/images/logo.svg",color: AppColors.green),
              Gap(3.vmin),
              CustomText(text: "Welcome to oue food app",color: AppColors.green,size: 16.sp,),
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
                          controller: nameCont,
                          isPass: false,
                          text: "Name",
                        ),
                        Gap(15),
                        CustomTextfield(
                          controller: emailCont,
                          isPass: false,
                          text: "Email Address",
                        ),
                        Gap(15),
                        CustomTextfield(
                          controller: passwordCont,
                          isPass: true,
                          text: "Password",
                        ),
                        Gap(20),
                        CustomButton(
                          onTap: (){
                            if(formKey.currentState!.validate())
                             print("object");
                          },
                          text: "Sign up",
                          color: Colors.transparent,
                          cBorder: Colors.white,
                          textColor: Colors.white,
                        ),
                        Gap(15),
                        CustomButton(
                          onTap: (){
                              Navigator.push(
                                  context, MaterialPageRoute(builder: (_) => LoginScreen()));
                          },
                          text: "Go to Log in ?",
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
              )
            ],
          ),
        ),
      ),
    );
  }
}

