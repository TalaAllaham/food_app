import 'package:Hungry/features/auth/widgets/custom_user_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../core/constants/app_colors.dart';
import '../../../shared/custom_button.dart';
import '../../../shared/custom_text.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController address = TextEditingController();

  @override
  void initState() {
    name.text = "sara";
    email.text = "ssa12@dd.com";
    address.text = "Syria";
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.green,
      appBar: AppBar(
        backgroundColor: AppColors.green,
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(Icons.arrow_back,color: Colors.white,)),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.settings,color: Colors.white)),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Gap(15),
              Center(
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(13),
                    border:Border.all(color: Colors.white,width: 3),
                ),
                  child: Icon(Icons.person,size: 120,color: Colors.grey.shade50),
              )),
              Gap(30),
              CustomUserTextfield(
                  controller: name,
                  label: "Name"),
              Gap(25),
              CustomUserTextfield(
                  controller: email,
                  label: "Email"),
              Gap(25),
              CustomUserTextfield(
                  controller: address,
                  label: "Address"),
              Gap(20),
              Divider(),
              Gap(10),
              ListTile(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  contentPadding: EdgeInsets.symmetric(horizontal: 16),
                  tileColor: Color(0xffF3F4F6),
                  title: CustomText(text: "Debit Card",color: Colors.black),
                  subtitle: CustomText(text: "**** **** 1957",color: Colors.black),
                  leading: Image.asset("assets/images/visa2.png",width: 60,height: 25),
                  trailing: CustomText(text: "Default",color: Colors.black),
                 ),
            ]),
        ),
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
                blurRadius: 5
            )]
        ),
        height: 80,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomButton(
                  icon: CupertinoIcons.pen,
                  text: "Edit Profile",
                  width: 150,
                  x: 15,
                  color: AppColors.green,
                  textColor: Colors.white,
                  onTap: () {}
                  ),
              CustomButton(
                  icon: Icons.logout,
                  text: "Logout",
                  width: 150,
                  x: 15,
                  color: Colors.white,
                  textColor: AppColors.green,
                  onTap: () {}
                  )])
          ),
        ),
    );
  }
}
