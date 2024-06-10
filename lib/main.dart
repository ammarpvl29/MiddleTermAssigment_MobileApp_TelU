import 'package:flutter/material.dart';
import 'sign_up.dart';
import 'sign_in.dart';
import 'home_page.dart';

void main() {
  runApp(const KlambiApp());
  
}

class KlambiApp extends StatelessWidget {
  const KlambiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Klambi',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: const MainPage(),
      routes: {
        '/product': (context) => const HomePage(),
      },
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xFFBCA09B),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo_klambi_final-transformed.png',
               fit: BoxFit.contain,
            ),
            const SizedBox(height: 20),
            const Text(
              'FEEL HAPPINESS\nLIVING WITHIN\nTHRIFT SHOPPING',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 40),
            const Text(
              'Welcome!',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Get an account and\nsupport sustainable fashion!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUpScreen(),
                    ),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 237, 124, 96),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const Text(
                    'SIGN UP',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignInScreen()),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 237, 124, 96),
                    borderRadius: BorderRadius.circular(25), 
                  ),
                  child: const Text(
                    'SIGN IN',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}