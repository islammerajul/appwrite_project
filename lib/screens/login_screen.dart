//import 'package:appwrite_project/const.dart';

import 'package:appwrite_project/const.dart';
import 'package:appwrite_project/widgets/custom_text_from_field.dart';

import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 200,
              ),
              Image.asset(
                assetName,
                scale: 10,
              ),
              // Text(
              //   "Google Login",
              //   style: myTextStyle,
              // ),
              SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
