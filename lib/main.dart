import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:patient_web/routes/app_routes.dart';
import 'screens/home_screen/home_screen.dart';
import 'screens/login/view/login_screen.dart';

void main() {
  runApp(const MyApp()

      //? device preview should add for responsive but it does not support in chrome
      //? that's why we should build the project in web using device preview for responsive

      //   DevicePreview(
      //     enabled: !kReleaseMode,
      //     builder: (context) => const MyApp(), // Wrap your app
      //   ),

      );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Flutter Demo',
      // useInheritedMediaQuery: true,
      // locale: DevicePreview.locale(context),
      // builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
