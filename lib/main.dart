import 'package:flutter/material.dart';
import 'package:socialaux/responsive/mobile_screen_layout.dart';
import 'package:socialaux/responsive/responsive_layout_screen.dart';
import 'package:socialaux/responsive/web_screen_layout.dart';
import 'package:socialaux/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Clone',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      home: const ResposiveLayout(
        mobileScreenLayout: MobileScreenLayout(),
        webScreenLayout: WebScreenLayout(),
      ),
    );
  }
}
