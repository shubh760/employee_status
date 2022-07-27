import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String hint;
  const CustomTextfield(
      {Key? key,
      required this.controller,
      required this.label,
      required this.hint,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: controller,
        style: TextStyle(color: Colors.white),
        cursorColor: Colors.white,
        decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(color: Colors.white),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(color: Colors.red)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(color: Colors.red.shade800)),
            prefixIcon: Padding(
                padding: EdgeInsets.all(0),
                child: Icon(
                  Icons.note_add_outlined,
                  color: Colors.white,
                )),
            label: Text(
              label,
              style: TextStyle(color: Colors.white),
            )),
      ),
    );
  }
}
