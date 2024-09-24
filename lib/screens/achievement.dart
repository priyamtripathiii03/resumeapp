
import 'package:flutter/material.dart';
import '../global.dart';
import '../textbox.dart';

class Achievementpage extends StatefulWidget {
  const Achievementpage({super.key});

  @override
  State<Achievementpage> createState() => _AchievementpageState();
}

class _AchievementpageState extends State<Achievementpage> {
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
          'Achievements',
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
                if (achievementlist.length > 1) {
                   achievementlist.removeAt(achievementlist.length - 1);
                }
              });
            },child: const Icon(Icons.remove),),
          const SizedBox(height: 10,),
          FloatingActionButton(
            heroTag: 'add',
            onPressed: () {
              setState(() {
                achievementlist.add({
                  'Achievement':TextEditingController(),
                  'Description':TextEditingController(),
                });
              });
            }, child: const Icon(Icons.add),),
          const SizedBox(height: 10,),
          FloatingActionButton(
            heroTag: 'next',
            onPressed: () {
              Navigator.of(context).pushNamed('/pdf');
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
                Text(
                  "Add your Achievement.",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10, left: 10, top: 20),
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                  children: List.generate(
                    achievementlist.length,
                        (index) => Container(
                      margin: const EdgeInsets.all(10),
                      height: 240,
                      width: double.infinity,
                      decoration: const BoxDecoration(color: Colors.white),
                      child: Column(children: [
                        const SizedBox(
                          height: 20,
                        ),
                        textBox(
                            isPhone: false,
                            isAddress: false,
                            label: 'Achievement',
                            hint: 'certificate achieve by company',
                            prefix: Icons.workspace_premium,
                            txtController: achievementlist[index]['Achievement']),
                        textBox(
                            isPhone: false,
                            isAddress: true,
                            label: 'Description',
                            hint: 'i have done my best work in company',
                            prefix: Icons.description,
                            txtController: achievementlist[index]['Description']),
                      ]),
                    ),
                  ),
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
