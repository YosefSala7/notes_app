import 'package:app/core/themes/app_theme.dart';
import 'package:app/features/Home/presenter/screens/home.dart';
import 'package:app/features/auth/presenter/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: SignUp(),
    );
  }
}
