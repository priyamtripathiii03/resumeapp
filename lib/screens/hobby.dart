import 'package:flutter/material.dart';

import '../global.dart';
import '../textbox.dart';

class HobbyScreen extends StatefulWidget {
  const HobbyScreen({super.key});

  @override
  State<HobbyScreen> createState() => _HobbyScreenState();
}

class _HobbyScreenState extends State<HobbyScreen> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        title: Text(
          'Hobbies',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w500, color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.home),
            color: Colors.white,
          ),
        ],
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            heroTag: 'remove',
            onPressed: () {
              setState(() {
                if (hobbielist.length > 1) {
                  hobbielist.removeAt(hobbielist.length - 1);
                }
              });
            },child: const Icon(Icons.remove),),
          const SizedBox(height: 10,),
          FloatingActionButton(
            heroTag: 'add',
            onPressed: () {
              setState(() {
                TextEditingController hobbie =
                TextEditingController();
                hobbielist.add(hobbie);
              });
            }, child: const Icon(Icons.add),),
          const SizedBox(height: 10,),
          FloatingActionButton(
            heroTag: 'next',
            onPressed: () {
              Navigator.of(context).pushNamed('/lang');
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
                Text("Add your Hobbies.",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,),),
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
                    hobbielist.length,
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
                            label: 'Hobbies',
                            hint: 'Writing',
                            prefix: Icons.interests,
                            txtController: hobbielist[index]),
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
