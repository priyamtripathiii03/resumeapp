import 'package:flutter/material.dart';
import 'package:resumeapp/screens/education_page.dart';
import 'package:resumeapp/screens/homepage.dart';
void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      routes: {
        '/': (context)=> HomePage(),
        '/edu': (context)=> EducationPage(),
      },
    );
  }

}
