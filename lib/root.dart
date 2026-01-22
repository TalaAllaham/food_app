import 'package:Hungry/core/constants/app_colors.dart';
import 'package:Hungry/features/cart/views/cart_view.dart';
import 'package:Hungry/features/home/views/home_view.dart';
import 'package:Hungry/features/orderHistory/views/order_history_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'features/auth/views/profile_view.dart';

class Root extends StatefulWidget {
  const Root({super.key});


  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {

  int currentScreen = 0;
  final PageController controller = PageController();
  final List<Widget> screens =[
    HomeView(),
    CartView(),
    OrderHistoryView(),
    ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        physics: NeverScrollableScrollPhysics(),
        children: screens,
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: AppColors.green,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              topLeft: Radius.circular(30),
              ),
        ),
        child: BottomNavigationBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentScreen,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey.shade600,
          items: [
          BottomNavigationBarItem(
              label: "Home",
              icon: Icon(CupertinoIcons.home)),
          BottomNavigationBarItem(
              label: "Cart",
              icon: Icon(CupertinoIcons.cart)),
          BottomNavigationBarItem(
              label: "Order History",
              icon: Icon(Icons.local_restaurant)),
          BottomNavigationBarItem(
              label: "Profile",
              icon: Icon(CupertinoIcons.profile_circled))
        ],
        onTap:(index){
         setState(() {
           currentScreen = index;
         });
         controller.jumpToPage(index);
        }),
      ),


    );
  }
}
