// import 'package:firebase/src/screens/forgot.dart';
// import 'package:firebase/src/signup.dart';
import 'package:firebase/src/common_widegts/custom_textfield.dart';
import 'package:firebase/src/screens/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool isLoading = false;

  signIn() async {
    setState(() {
      isLoading = true;
    });
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email.text, password: password.text);
    } on FirebaseAuthException catch (e) {
      Get.snackbar("Error msg", e.code);
    } catch (e) {
      Get.snackbar('Error msg', e.toString());
    }
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : Scaffold(
            backgroundColor: Colors.white,
            body: LayoutBuilder(builder: (context, constraints) {
              return Stack(
                children: [
                  Container(
                    height: double.infinity,
                    width: double.infinity,
                    color: const Color(0xffAA14F0),
                  ),
                  Container(
                    height: constraints.maxHeight * 0.924,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(46),
                            bottomRight: Radius.circular(46)),
                        color: Color(0xffFFFFFF)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: constraints.maxHeight * 0.21,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: constraints.maxWidth * 0.07,
                              right: constraints.maxWidth * 0.05,
                              bottom: constraints.maxHeight * 0.065),
                          child: Image.asset('assets/logo/Logo2.png'),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: constraints.maxWidth * 0.07,
                              right: constraints.maxWidth * 0.05,
                              bottom: constraints.maxHeight * 0.013,
                              top: constraints.maxHeight * 0.05),
                          child: Text(
                            'Email',
                            style: TextStyle(
                                fontSize: constraints.maxWidth * 0.05,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: constraints.maxWidth * 0.07,
                              // vertical: constraints.maxWidth * 0.01
                            ),
                            child: const CustomTextfield()),
                        Padding(
                          padding: EdgeInsets.only(
                              left: constraints.maxWidth * 0.07,
                              right: constraints.maxWidth * 0.05,
                              bottom: constraints.maxHeight * 0.013,
                              top: constraints.maxHeight * 0.02),
                          child: Text(
                            'Password',
                            style: TextStyle(
                                fontSize: constraints.maxWidth * 0.05,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: constraints.maxWidth * 0.07,
                            ),
                            child: CustomTextfield(
                              text: Padding(
                                padding: const EdgeInsets.only(top: 12),
                                child: Text(
                                  'hide',
                                  style: TextStyle(
                                      color: const Color(0xff000000)
                                          .withOpacity(0.44)),
                                ),
                              ),
                            )),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomeScreen()));
                          },
                          child: Center(
                            child: Container(
                              margin: EdgeInsets.only(
                                  top: constraints.maxHeight * 0.05),
                              height: constraints.maxHeight * 0.064,
                              width: constraints.maxWidth * 0.86,
                              decoration: BoxDecoration(
                                  color: const Color(0xffAA14F0),
                                  borderRadius: BorderRadius.circular(7)),
                              child: Center(
                                  child: Text(
                                'Sign In',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: constraints.maxWidth * 0.04),
                              )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      top: constraints.maxHeight * 0.945,
                      left: constraints.maxWidth * 0.37,
                      child: Text(
                        'Copyright 2024',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: constraints.maxWidth * 0.039),
                      ))
                ],
              );
            }));
  }
}
