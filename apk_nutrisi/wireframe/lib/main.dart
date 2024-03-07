import 'package:flutter/material.dart';
import './pages/login.dart';
import './pages/register.dart';
import './pages/homepage.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {

  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginPage(), 
        '/register': (context) => const RegistrationPage(), 
        '/homepage': (context) => const HomePage(), 
      },
    );
  }
}