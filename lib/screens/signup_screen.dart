import 'package:appwrite_project/const.dart';
import 'package:appwrite_project/services/db_helper.dart';
import 'package:appwrite_project/widgets/custom_text_from_field.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _userController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _addressController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Image.asset(
                assetName,
                scale: 10,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "SignUp",
                style: myTextStyle,
              ),
              SizedBox(
                height: 25,
              ),
              CustomTextFromField(
                  controller: _userController,
                  hinText: 'User name',
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "please enter your name";
                    }
                  }),
              SizedBox(
                height: 15,
              ),
              CustomTextFromField(
                  controller: _emailController,
                  hinText: 'Email',
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "please enter your email";
                    }
                  }),
              SizedBox(
                height: 15,
              ),
              CustomTextFromField(
                  controller: _addressController,
                  hinText: 'Address',
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "please enter your address";
                    }
                  }),
              SizedBox(
                height: 15,
              ),
              CustomTextFromField(
                  controller: _phoneController,
                  hinText: 'Phone number',
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "please enter your Phone number";
                    }
                  }),
              SizedBox(
                height: 15,
              ),
              CustomTextFromField(
                  controller: _passwordController,
                  hinText: 'Password',
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "please enter your Password";
                    }
                  }),
              MaterialButton(
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    try {
                      bool result = DBHelper.instance.createInfo(
                          name: _userController.text,
                          password: _passwordController.text,
                          address: _addressController.text,
                          email: _emailController.text,
                          phone: _phoneController.text);

                      if (result) {
                        //Navigator.pop(context);

                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Added Info successfully")));
                      }
                    } catch (e) {
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text(e.toString())));
                    }
                  }
                },
                child: Text("Sign Up"),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
