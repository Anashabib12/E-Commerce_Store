// import 'package:firebase/src/screens/wrapper.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class Verify extends StatefulWidget {
//   const Verify({super.key});

//   @override
//   State<Verify> createState() => _VerifyState();
// }

// class _VerifyState extends State<Verify> {
//   @override
//   void initState() {
//     sendVerifyLink();
//     super.initState();
//   }

//   sendVerifyLink() async {
//     final user = FirebaseAuth.instance.currentUser!;
//     await user.sendEmailVerification().then((value) => {
//           Get.snackbar('Link sent', 'A link has been sent to your email',
//               margin: EdgeInsets.all(30), snackPosition: SnackPosition.BOTTOM)
//         });
//   }

//   reload() async {
//     await FirebaseAuth.instance.currentUser!.reload().then((value) {
//       Get.offAll(Wrapper());
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           title: const Text(
//         "Verification",
//       )),
//       body: const Center(
//         child: Text(
//             'Open your mail and click on the link provided to verify email and reload this page'),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: reload,
//         child: const Icon(Icons.replay_outlined),
//       ),
//     );
//   }
// }
