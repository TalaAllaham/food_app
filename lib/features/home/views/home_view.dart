import 'package:Hungry/features/home/widgets/card_item.dart';
import 'package:Hungry/features/home/widgets/food_category.dart';
import 'package:Hungry/features/home/widgets/search_field.dart';
import 'package:Hungry/features/home/widgets/user_header.dart';
import 'package:Hungry/shared/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../../core/constants/app_colors.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  List category = [
    "All",
    "Combos",
    "Sliders",
    "Classic"
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: AppColors.green,
              elevation: 0,
              pinned: true,
              toolbarHeight: 160,
              scrolledUnderElevation: 0,
              flexibleSpace: Padding(
                padding: const EdgeInsets.only(left: 15,right: 15,top: 39),
                child: Column(
                  children: [
                    UserHeader(),
                    Gap(15),
                    SearchField(),
                  ],
                ),
              )
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                child: Column(
                  children: [
                    FoodCategory(
                      category: category,
                      selectedIndex: selectedIndex,
                      onSelect: (index) {
                      setState(() {
                        selectedIndex = index;
                      });  },),
                      ],
                      ),
                      ),
                      ),
              SliverPadding(
              padding: EdgeInsets.all(8),
              sliver: SliverGrid(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount:2,
                      childAspectRatio: 0.70 ),
                  delegate: SliverChildBuilderDelegate(
                  childCount: 6,
                  (context,index) => CardItem(
                    image: "assets/images/Burger.png",
                    text: "Cheese Burger",
                    desc: "Wendy's Burger",
                    rate: "4.9"
                ),
              )
              ),
            )],
        )
          ),
      );
  }
}
