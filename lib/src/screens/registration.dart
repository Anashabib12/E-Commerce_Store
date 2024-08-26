// import 'package:firebase/src/screens/wrapper.dart';
import 'package:firebase/src/common_widegts/custom_textfield.dart';
import 'package:firebase/src/screens/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// import 'package:get/get_navigation/get_navigation.dart';
// import 'package:get/get.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  signup() async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email.text, password: password.text);
    // Get.offAll(const Wrapper());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffFFFFFF),
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
                      height: constraints.maxHeight * 0.2,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: constraints.maxWidth * 0.07,
                          right: constraints.maxWidth * 0.05,
                          bottom: constraints.maxHeight * 0.03),
                      child: Image.asset('assets/logo/Logo1.png'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: constraints.maxWidth * 0.07,
                          right: constraints.maxWidth * 0.05,
                          bottom: constraints.maxHeight * 0.013),
                      child: Text(
                        'Full Name',
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
                                builder: (context) => const Login()));
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
                            'Create Account',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: constraints.maxWidth * 0.04),
                          )),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: constraints.maxHeight * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Already have an account?',
                            style: TextStyle(
                                fontSize: constraints.maxWidth * 0.04,
                                fontWeight: FontWeight.w400)),
                        SizedBox(
                          width: constraints.maxWidth * 0.02,
                        ),
                        Text(
                          'Sign In',
                          style: TextStyle(
                              fontSize: constraints.maxWidth * 0.04,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    )
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
