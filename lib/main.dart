import 'package:ak_admin/provider/auth_menu_provider.dart';
import 'package:ak_admin/provider/dashboard_provider.dart';
import 'package:ak_admin/view/pages/main_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => AuthMenuProvider(),),
      ChangeNotifierProvider(create: (context) => DashboardProvider(),)
    ],
    child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
