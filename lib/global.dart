import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

//for personal
TextEditingController txtFirstName = TextEditingController(text: 'Priyam');
TextEditingController txtLastName = TextEditingController(text: 'Tripathi');
TextEditingController txtProfession = TextEditingController(text: 'Flutter Developer');
TextEditingController txtEmailaddress = TextEditingController(text: 'priyamtripathi91@gmail.com');
TextEditingController txtPhone = TextEditingController(text: '+91-987654321');
TextEditingController txtAddress =
TextEditingController(text: 'A-204, Malhar Apartment, Near dhiraj Sons, Udhna, Surat');

ImagePicker imagePicker = ImagePicker();
File? fileImage;

const String defaultProfileImage = "assets/dfimgs.jpg";

List eduList = [
  {
    'school': TextEditingController(text: "Sungrace School"),
    'degree': TextEditingController(text: "H.S.C"),
    'year': TextEditingController(text: "2024"),
    'grade': TextEditingController(text: "70.97"),
  }
];

//for languages
TextEditingController txtlanguage=TextEditingController();
List languagelist=[txtlanguage];

//for skills
TextEditingController txtskill=TextEditingController();
List skilllist=[txtskill];