import 'package:flutter/material.dart';
import 'package:mini_app_clean_arcticture/features/details_screen/presentation/pages/details_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: DetailsPage());
  }
}
