import 'package:flutter/material.dart';
import 'package:resumeapp/screens/education_page.dart';
import 'package:resumeapp/screens/hobby.dart';
import 'package:resumeapp/screens/homepage.dart';
import 'package:resumeapp/screens/language.dart';
void main()
{
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      routes: {
        '/': (context)=> const HomePage(),
        '/edu': (context)=> const EducationPage(),
        '/lang': (context)=> const LanguageScreen(),
        '/hobby': (context)=> const HobbyScreen(),
      },
    );
  }

}
