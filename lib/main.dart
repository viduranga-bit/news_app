import 'package:flutter/material.dart';
import 'package:news_app/views/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Av News",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
     home: const SplashScreen(),
    );
  }
}