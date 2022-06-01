import 'package:flutter/material.dart';
import 'package:splitbill/page/onboarding_page.dart';
import 'package:splitbill/page/register_page.dart';
import 'package:splitbill/page/sign_in_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => OnboardingPage(),
        '/sign-in': (context) => SignInPage(),
        '/register': (context) => RegisterPage(),
      },
    );
  }
}
