import 'package:Hungry/root.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

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
