import 'package:flutter/material.dart';
import 'package:mini_app_clean_arcticture/features/home/presentation/pages/home_page.dart';

import 'features/upgrade_plan/presentation/pages/upgrade_plan_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
