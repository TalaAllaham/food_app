import 'package:Hungry/features/auth/views/login_view.dart';
import 'package:Hungry/features/home/views/home_view.dart';
import 'package:Hungry/root.dart';
import 'package:Hungry/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'features/auth/views/signup_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.white
          ),
          debugShowCheckedModeBanner: false,
          home: Root(),
        );
      },
    );
  }
}
