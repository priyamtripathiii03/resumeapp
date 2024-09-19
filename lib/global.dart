import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

TextEditingController txtFirstName = TextEditingController();
TextEditingController txtLastName = TextEditingController();
TextEditingController txtProfession = TextEditingController();
TextEditingController txtEmailaddress = TextEditingController();
TextEditingController txtPhone = TextEditingController();
TextEditingController txtAddress =
TextEditingController();

ImagePicker imagePicker = ImagePicker();
File? fileImage;

const String defaultProfileImageUrl = "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png";
