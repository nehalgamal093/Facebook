import 'package:facebook_route_project/screens/home_screen/home.dart';
import 'package:facebook_route_project/screens/login_screen/widgets/custom_btn.dart';
import 'package:facebook_route_project/screens/login_screen/widgets/input_text.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 90),
                    Image.asset('assets/images/facebook_logo.png'),
                    const SizedBox(height: 60),
                    InputText(
                        hinText: 'Mobile Number or Email Address',
                        isPassword: false,
                        textEditingController: emailTextEditingController,
                        validator: (value) {
                          if (value.isNotEmpty) {
                            return validationMessage(false);
                          } else {
                            return 'Please Type Something';
                          }
                          return null;
                        },
                        suffixIcon: const SizedBox(),
                        isObscure: false),
                    const SizedBox(height: 30),
                    InputText(
                      hinText: 'Password',
                      isPassword: true,
                      textEditingController: passwordTextEditingController,
                      validator: (value) {
                        if (value.isNotEmpty) {
                          return validationMessage(true);
                        } else {
                          return 'Please Type Something';
                        }
                        return null;
                      },
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isObscure = !isObscure;
                          });
                        },
                        icon: isVisible(),
                      ),
                      isObscure: isObscure,
                    ),
                    const SizedBox(height: 50),
                    CustomBtn(
                      text: 'Login',
                      backgroundColor: const Color(0xFF1877F2),
                      textColor: Colors.white,
                      borderColor: const Color(0xFF1877F2),
                      onBtnPressed: () {
                        // if (_formKey.currentState!.validate()) {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Home()));
                        // }
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Forgotten Password ?',
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF898F9C),
                      fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(height: 140),
              CustomBtn(
                text: 'Create Account',
                backgroundColor: Colors.white,
                textColor: const Color(0xFF1877F2),
                borderColor: const Color(0xFF1877F2),
                onBtnPressed: () {},
              ),
              const SizedBox(height: 30),
              Image.asset('assets/images/meta_logo_small.png')
            ],
          ),
        ),
      ),
    );
  }

  String? validationMessage(isPassword) {
    if (isPassword) {
      final bool passwordValid = RegExp(
              r"^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$")
          .hasMatch(passwordTextEditingController.text);
      return passwordValid
          ? null
          : "Password Should Contain Special Characters";
    } else {
      final bool emailValid = RegExp(
              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
          .hasMatch(emailTextEditingController.text);
      return emailValid ? null : "Invalid Email";
    }
  }

  Icon isVisible() {
    return (isObscure
        ? const Icon(
            Icons.visibility_off,
            color: Color(0xFF898F9C),
          )
        : const Icon(Icons.visibility, color: Color(0xFF898F9C)));
  }
}
