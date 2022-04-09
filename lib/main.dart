import 'dart:core';

import 'package:chat_application_ui/Constant/constant.dart';
import 'package:chat_application_ui/Screens/chat_screen.dart';
import 'package:chat_application_ui/Screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fluter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        primaryColorDark: Colors.white,
        fontFamily: 'Gamja Flower',
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.blue),
      ),
      home: const SplashScreen(),
      routes: <String, WidgetBuilder>{
        animatedScreen: (BuildContext context) => const SplashScreen(),
        chatScreen: (BuildContext context) => const MyChatScreen()
      },
    );
  }
}
