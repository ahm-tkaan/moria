import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:moria/mainPage.dart';

void main() {
  runApp(
    const MainApp(),
  );
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: Color(0XFFf2f2f2),
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          fontFamily: "AfacadFlux",
          textTheme: TextTheme(
            bodyMedium: TextStyle(
              color: Color(0xFF0a1832),
            ),
            bodyLarge: TextStyle(color: Colors.white),
          ),
        ),
        home: const Mainpage());
  }
}
