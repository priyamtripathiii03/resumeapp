import 'package:flutter/material.dart';
import 'package:resumeapp/global.dart';
import '../textbox.dart';

class Summarypage extends StatefulWidget {
  const Summarypage({super.key});

  @override
  State<Summarypage> createState() => _SummarypageState();
}

class _SummarypageState extends State<Summarypage> {
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
         'Summary',
         style: TextStyle(
           color: Colors.white,
           fontWeight: FontWeight.bold,),),
     ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 10,),
          FloatingActionButton(
            heroTag: 'next',
            onPressed: () {
              Navigator.of(context).pushNamed('/achi');
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
                Text("Finally let's work on your summary.",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,),),
                Text("Please select the one that best meets your objective.",style: TextStyle(),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10,left: 10,top: 50),
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                  children: [ Container(
                    margin: const EdgeInsets.all(10),
                    height: 170,
                    width: double.infinity,
                    decoration: const BoxDecoration(color: Colors.white),
                    child: Column(children: [
                      const SizedBox(
                        height: 20,
                      ),
                      textBox(
                        isPhone: false,
                        isAddress: true,
                        label: 'About Me',
                        hint: 'seeking a challenging and fast-paced role',
                        prefix: Icons.details_outlined,
                        txtController: txtSummary,
                      ),
                    ]),
                  ),
                  ],
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const SizedBox(
                height: 10,
              ),

            ],
          )
        ],
      ),
    );
  }
}