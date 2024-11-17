import 'package:flutter/material.dart';
import 'package:koalove2/screens/login.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

// function utama
void main() {
  runApp(const MyApp());
}

// class app
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) {
        CookieRequest request = CookieRequest();
        return request;
      },
      child: MaterialApp(
        title: 'Koalove',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 55, 111, 118)),
          useMaterial3: true,
        ),
        home: const LoginPage(),
      ),
    );
  }
}

