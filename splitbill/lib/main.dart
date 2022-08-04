import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:splitbill/cubit/page_cubit.dart';
import 'package:splitbill/page/home_page.dart';
import 'package:splitbill/page/main_page.dart';
import 'package:splitbill/page/onboarding_page.dart';
import 'package:splitbill/page/register_page.dart';
import 'package:splitbill/page/sign_in_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => PageCubit())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => OnboardingPage(),
          '/sign-in': (context) => SignInPage(),
          '/register': (context) => RegisterPage(),
          '/dashboard': (context) => MainPage(),
        },
      ),
    );
  }
}
