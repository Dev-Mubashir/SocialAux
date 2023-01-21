import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:socialaux/responsive/mobile_screen_layout.dart';
import 'package:socialaux/responsive/responsive_layout_screen.dart';
import 'package:socialaux/responsive/web_screen_layout.dart';
import 'package:socialaux/screens/login_screen.dart';
import 'package:socialaux/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized;
  await Firebase.initializeApp();
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
      // home: const ResposiveLayout(
      //   mobileScreenLayout: MobileScreenLayout(),
      //   webScreenLayout: WebScreenLayout(),
      // ),
      home: LoginScreen(),
    );
  }
}
