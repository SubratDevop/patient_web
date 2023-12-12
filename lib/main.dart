import 'package:flutter/material.dart';
import 'screens/home_screen/home_screen.dart';

void main() {

  //! device preview should add for responsive but it does not support in chro
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  
       LoginPage()
    );
  }
}
