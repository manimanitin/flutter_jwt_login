import 'package:flutter/material.dart';
import 'package:flutter_jwt_login/screens/check_auth_screen.dart';
import 'package:flutter_jwt_login/screens/home_screen.dart';
import 'package:flutter_jwt_login/screens/login_screen.dart';
import 'package:flutter_jwt_login/screens/register_screen.dart';
import 'package:flutter_jwt_login/services/services.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const AppState());
}

class AppState extends StatelessWidget {
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthService()),
      ],
      child: const MainApp(),
    );
  }
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
        '/checking': (_) => CheckAuthScreen(),
      },
      scaffoldMessengerKey: NotificationsService.messengerKey,
      theme: ThemeData.light(),
    );
  }
}
