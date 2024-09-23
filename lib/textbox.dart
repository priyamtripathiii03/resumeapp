import 'package:flutter/material.dart';

Widget textBox({
  required bool isPhone,
  required bool isAddress,
  required String label,
  required String hint,
  required IconData prefix,
  required TextEditingController txtController,
}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextFormField(
      validator: (value) {
        return value!.isEmpty ? 'This detail is mandatory !' : null;
      },
      keyboardType: (isPhone) ? TextInputType.phone : TextInputType.text,
      controller: txtController,
      style: const TextStyle(
        color: Colors.black,
        // fontWeight: FontWeight.w500,
        // letterSpacing: 1,
      ),
      decoration: InputDecoration(
        hintText: hint,
        prefix: Icon(prefix),
        labelStyle: const TextStyle(color: Colors.black),
        labelText: label,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
            width: 2,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red.shade700,
            width: 1,
          ),
        ),
      ),
    ),
  );
}
