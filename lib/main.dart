import 'package:flutter/material.dart';
import 'package:resumeapp/screens/achievement.dart';
import 'package:resumeapp/screens/education_page.dart';
import 'package:resumeapp/screens/hobby.dart';
import 'package:resumeapp/screens/homepage.dart';
import 'package:resumeapp/screens/language.dart';
import 'package:resumeapp/screens/pdfview.dart';
import 'package:resumeapp/screens/splash_screen.dart';
import 'package:resumeapp/screens/summary.dart';
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
        '/': (context)=> const SplashScreen(),
        '/home': (context)=> const HomePage(),
        '/edu': (context)=> const EducationPage(),
        '/lang': (context)=> const LanguageScreen(),
        '/hobby': (context)=> const HobbyScreen(),
        '/sum': (context)=> const Summarypage(),
        '/achi': (context)=> const Achievementpage(),
        '/pdf': (context)=> const PdfViewPage(),
      },
    );
  }

}
