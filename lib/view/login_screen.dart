import 'package:flutter/material.dart';
import 'package:food_hunter_app/view/dashboard_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Spacer(),
            const Text(
              'Welcome to',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w700),
            ),
            Image.asset('assets/food_hunter_logo.png', width: 300, height: 300),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                prefixIcon: const Icon(Icons.email),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: const Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            TextButton(
                onPressed: () {},
                child: const Text(
                  'Forgot password?',
                  style: TextStyle(color: Color(0xFFFF9F1C)),
                )),
            const SizedBox(height: 64),
            Row(
              children: [
                Expanded(
                    child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            side: const BorderSide(
                                width: 2, color: Color(0xFFFF9F1C))),
                        onPressed: () {},
                        child: const Text(
                          'Register',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFFFF9F1C)),
                        ))),
                const SizedBox(width: 16),
                Expanded(
                    child: FilledButton(
                  style: ButtonStyle(
                      backgroundColor:
                          WidgetStateProperty.all(const Color(0xFF2A2B2E))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DashboardScreen()));
                  },
                  child: const Text('Login',
                      style: TextStyle(
                          color: Color(0xFFFF9F1C),
                          fontWeight: FontWeight.w600,
                          fontSize: 16)),
                ))
              ],
            ),
            const Spacer(),
            const Text(
              'Copyright © 2024 peongox. All rights reserved.',
              style: TextStyle(color: Colors.black54),
            ),
          ],
        ),
      )),
    );
  }
}
