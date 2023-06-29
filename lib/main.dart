import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/login_page.dart';

import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
  
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp (
      //home: HomePage(),
      themeMode: ThemeMode.light, //dark
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      routes: {
        "/":(context) => HomePage(),
        "home"
      },
    );
  }
}