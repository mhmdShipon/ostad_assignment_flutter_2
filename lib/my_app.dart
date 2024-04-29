import 'package:flutter/material.dart';
import 'package:ostad_assignment_flutter_2/pages/detail_page.dart';
import 'package:ostad_assignment_flutter_2/pages/home_screen.dart';
import 'package:ostad_assignment_flutter_2/untils/routes.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomePage(),
        Routes.home.route: (context) => const HomePage(),
        Routes.detail.route: (context) => const DetailPage(),
      },
    );
  }
}
