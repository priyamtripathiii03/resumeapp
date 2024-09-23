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
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
        ),
        title: const Text(
          'Education Detail',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,),),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            heroTag: 'remove',
            onPressed: () {
              setState(() {
                if(eduList.length>1)
                {
                  eduList.removeAt(eduList.length-1);
                }
              });
            },child: const Icon(Icons.remove),),
          const SizedBox(height: 10,),
          FloatingActionButton(
            heroTag: 'add',
            onPressed: () {

              Map m1 = {
                "school" : TextEditingController(),
                "degree" : TextEditingController(),
                "year" : TextEditingController(),
                "grade" : TextEditingController(),
              };
              setState(() {
                eduList.add(m1);
              });
            },child: const Icon(Icons.add),),
          const SizedBox(height: 10,),
          FloatingActionButton(
            heroTag: 'next',
            onPressed: () {
              Navigator.of(context).pushNamed('/lang');
            },child: const Icon(Icons.chevron_right),),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(
            eduList.length,
            (index) => Container(
              margin: const EdgeInsets.all(10),
              height: 315,
              width: double.infinity,
              decoration: const BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  textBox(
                    isPhone: false,
                    isAddress: false,
                    label: 'School/University',
                    hint: 'Sungrace School',
                    prefix: Icons.school,
                    txtController: eduList[index]['school'],
                  ),
                  textBox(
                    isPhone: false,
                    isAddress: false,
                    label: 'Degree/ Course',
                    hint: 'H.S.C',
                    prefix: Icons.workspace_premium,
                    txtController: eduList[index]['degree'],
                  ),
                  textBox(
                    isPhone: false,
                    isAddress: false,
                    label: 'Year',
                    hint: '2024',
                    prefix: Icons.calendar_month,
                    txtController: eduList[index]['year'],
                  ),
                  textBox(
                    isPhone: false,
                    isAddress: false,
                    label: 'Percentage',
                    hint: '70.97',
                    prefix: Icons.percent,
                    txtController: eduList[index]['grade'],
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
