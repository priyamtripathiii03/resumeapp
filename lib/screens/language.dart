import 'package:flutter/material.dart';
import 'package:resumeapp/global.dart';

import '../textbox.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
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
          'Languages',
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
            if (languagelist.length > 1) {
            languagelist.removeAt(languagelist.length - 1);
                 }
                });
            },child: const Icon(Icons.remove),),
          const SizedBox(height: 10,),
          FloatingActionButton(
            heroTag: 'add',
            onPressed: () {
              setState(() {
                TextEditingController language =
                TextEditingController();
                languagelist.add(language);
              });
            }, child: const Icon(Icons.add),),
          const SizedBox(height: 10,),
          FloatingActionButton(
            heroTag: 'next',
            onPressed: () {
              Navigator.of(context).pushNamed('/hobby');
            },child: const Icon(Icons.chevron_right),),
        ],
      ),
      body: Stack(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Add your languages.",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,),),
                Text("Include your native language and additional language you speak.",style: TextStyle(),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10,left: 10,top: 50),
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                  children: List.generate(
                    languagelist.length,
                        (index) => Container(
                      margin: const EdgeInsets.all(10),
                      height: 120,
                      width: double.infinity,
                      decoration: const BoxDecoration(color: Colors.white),
                      child: Column(children: [
                        const SizedBox(
                          height: 20,
                        ),
                        textBox(
                            isPhone: false,
                            isAddress: false,
                            label: 'Language',
                            hint: 'Hindi',
                            prefix: Icons.language,
                            txtController: languagelist[index]),
                      ]),
                    ),
                  ),
                ),
              ),
            ),
          ),
            ],
      ),
    );
  }
}
