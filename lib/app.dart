import 'package:flutter/material.dart';
import 'package:xogame/pages/homepage/homeScreen.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.light,
          colorSchemeSeed: const Color(0xff0D031B),
          iconTheme: const IconThemeData(color: Color(0xfffffffff)),
          useMaterial3: true),
      darkTheme: ThemeData(brightness: Brightness.dark, useMaterial3: true),
     home: HomeScreen(),
    );
  }
}