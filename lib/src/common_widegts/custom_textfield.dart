import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final Widget? text;
  const CustomTextfield({super.key, this.text});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          suffixIcon: text,
          fillColor: const Color(0xffFFFFFF).withOpacity(0.65),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(7.0),
              borderSide: const BorderSide(color: Color(0xffD9D9D9))),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(7.0),
              borderSide: const BorderSide(color: Color(0xffD9D9D9))),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(7.0),
              borderSide: const BorderSide(color: Color(0xffD9D9D9))),
          contentPadding: const EdgeInsets.all(13)),
    );
  }
}
