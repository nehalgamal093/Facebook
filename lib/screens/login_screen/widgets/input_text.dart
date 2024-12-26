import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  String hinText;
  bool isPassword;
  TextEditingController textEditingController;
  FormFieldValidator validator;
  Widget suffixIcon;
  bool isObscure;
  InputText(
      {required this.hinText,
      required this.isPassword,
      required this.textEditingController,
      required this.validator,
      required this.suffixIcon,
      required this.isObscure,
      super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      obscureText: isObscure && isPassword,
      validator: validator,
      decoration: InputDecoration(
        hintText: hinText,
        hintStyle: const TextStyle(
            fontSize: 16,
            color: Color(0xFF898F9C),
            fontWeight: FontWeight.w400),
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: const Color.fromARGB(47, 214, 223, 241),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: const BorderSide(color: Color(0xFF898F9C), width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: const BorderSide(color: Color(0xFF898F9C), width: 1.0),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: const BorderSide(color: Color(0xFFfc2b44), width: 1.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: const BorderSide(color: Color(0xFFfc2b44), width: 1.0),
        ),
      ),
    );
  }
}
