import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resumeapp/global.dart';
import 'package:resumeapp/textbox.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        shadowColor: Colors.black,
        title: const Text(
          'Personal Details',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                GestureDetector(
                  onTap: () async {
                    XFile? img =
                    await imagePicker.pickImage(source: ImageSource.gallery);
                    setState(() {
                      fileImage = File(img!.path);
                    });
                  },
                  child: CircleAvatar(
                    radius: 80.20,
                    backgroundImage: fileImage != null
                        ? FileImage(fileImage!)
                        : const AssetImage('defaultProfileImageUrl'),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: textBox(
                          isPhone: false,
                          isAddress: false,
                          label: 'First Name',
                          hint: 'Priyam',
                          prefix: Icons.person,
                          txtController: txtFirstName),
                    ),
                    ]
                ),
                    Row(
                      children: [
                      Expanded(
                        child: textBox(
                            isPhone: false,
                            isAddress: false,
                            label: 'Last Name',
                            hint: 'Tripathi',
                            prefix: Icons.person,
                            txtController: txtLastName),
                      ),
                  ],
                ),
                    textBox(
                        isPhone: false,
                        isAddress: false,
                        label: 'Profession',
                        hint: 'Developer',
                        prefix: Icons.work,
                        txtController: txtProfession),
                    Row(
                      children: [
                       Expanded(
                          child: textBox(
                              isPhone: false,
                              isAddress: false,
                              label: 'Email Address',
                              hint: 'priyam03@gmail.com',
                              prefix: Icons.email,
                              txtController: txtEmailaddress),
                        ),
                     ]
                    ),
                Row(
                  children: [
                    Expanded(
                      child: textBox(
                          isPhone: true,
                          isAddress: false,
                          label: 'Phone',
                          hint: '9876543210',
                          prefix: Icons.phone,
                          txtController: txtPhone),
                    ),
                  ],
                ),
                textBox(
                    isPhone: false,
                    isAddress: true,
                    label: 'Address',
                    hint: 'A-262 Bhakti nagar,Dindoli,surat',
                    prefix: Icons.home,
                    txtController: txtAddress),
                  ],
                    ),
          ),
              )
          ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).pushNamed('/edu');
        },child: const Icon(
        Icons.chevron_right,
      ),
      ),
    );
  }
}
