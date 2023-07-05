
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/Pages/spicyfoodpage.dart';
import 'package:flutter_application_1/Pages/uitask.dart';
import 'package:get/get.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.blue));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      builder: (context, child) {
        return ScrollConfiguration(behavior: AppBehavior(), child: child!);
      },
      debugShowCheckedModeBanner: false,
      title: "Sample App",
      home:  const FoodOrderPage(),
    );
  }
}

class AppBehavior extends ScrollBehavior {
  @override
  Widget buildOversrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
