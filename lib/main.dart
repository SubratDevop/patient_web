import 'package:flutter/material.dart';
import 'package:patient_web/routes/app_routes.dart';
import 'screens/home_screen/home_screen.dart';
import 'screens/login/view/login_screen.dart';

void main() {

  //! device preview should add for responsive but it does not support in chrome
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      
    );
  }
}
