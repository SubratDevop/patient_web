import 'package:go_router/go_router.dart';
import 'package:patient_web/screens/home_screen/home_screen.dart';
import 'package:patient_web/screens/login/view/login_screen.dart';

// GoRouter configuration
final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      name: 'login', // Optional, add name to your routes. Allows you navigate by name instead of path
      path: '/',
      builder: (context, state) =>const  LoginScreen(),
      // builder: (context, state) =>  HomeScreen(),
    ),
    GoRoute(
      name: 'home',
      path: '/home_screen',
      builder: (context, state) =>  HomeScreen(),
    ),
  ],
);