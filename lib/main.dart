import 'package:flutter/material.dart';
import 'package:toku_app/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Toku App',
      theme: ThemeData(
          scaffoldBackgroundColor: Color(0xffDEE5D4),
          appBarTheme: AppBarTheme(
              backgroundColor: Color(0xff8EACCD),
              iconTheme: IconThemeData(
                color: Color(0xffFFF5CD),
              ))
      ),
      home: SplashScreen(),
    );
  }
}
