import 'package:flutter/material.dart';
import 'package:resumeapp/global.dart';

import '../textbox.dart';

class EducationPage extends StatefulWidget {
  const EducationPage({super.key});

  @override
  State<EducationPage> createState() => _EducationPageState();
}

class _EducationPageState extends State<EducationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Colors.blue,
        title: const Text('Education Detail',style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
      child: Column(
       children: List.generate(eduList.length, (index) => Container(
       margin: const EdgeInsets.all(10),
       height: 300,
       width: double.infinity,
       decoration: const BoxDecoration(color: Colors.white),
        child: Column(
            children: [
              Expanded(
                child: textBox(
                    isPhone: false,
                    isAddress: false,
                    label: 'School/University',
                    hint: 'Sungrace School',
                    prefix: Icons.school,
                    txtController: eduList[index]['school']),
              ),
            ],
        ),
        ),
    ),
        ),
      ),
      );
  }
}
