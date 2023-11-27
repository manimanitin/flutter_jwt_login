import 'package:flutter/material.dart';
import 'package:flutter_jwt_login/screens/home_screen.dart';
import 'package:flutter_jwt_login/screens/login_screen.dart';
import 'package:flutter_jwt_login/screens/register_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login',
      initialRoute: '/home',
      routes: {
        '/home': (_) => HomeScreen(),
        '/login': (_) => LoginScreen(),
        '/registrar': (_) => RegisterScreen(),
      },
    );
  }
}
