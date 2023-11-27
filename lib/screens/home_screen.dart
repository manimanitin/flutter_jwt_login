// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_jwt_login/services/auth_service.dart';

import '../colors/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My App'),
        backgroundColor: Colors.black54,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                AuthService().logout();
                Navigator.pushNamed(context, '/login');
              },
              child: const Text('Login'),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.buttonGreenColor,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                AuthService().logout();
                Navigator.pushNamed(context, '/registrar');
              },
              child: const Text('Registrar'),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.buttonGreenColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
