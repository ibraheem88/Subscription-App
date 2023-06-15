import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widgets/app_bar.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: Colors.white30,
        body: Column(children: [
          const MyAppBar(title: 'Reset Password'),
          "Your identity has been verified. Please enter new credentials"
              .text
              .black
              .size(18)
              .make()
              .pOnly(top: 8, left: 33)
              .centered(),
          const TextField(
            decoration: InputDecoration(
                fillColor: Color(0xffFCFCFC),
                filled: true,
                prefixIcon: Icon(Icons.lock_outline, size: 26),
                suffixIcon: Icon(Icons.remove_red_eye_outlined, size: 24),
                suffixIconColor: Color(0xa68b8b8b),
                prefixIconColor: Color(0xa68b8b8b),
                hintText: "New Password",
                hintStyle: TextStyle(color: Color(0xcc8b8b8b)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(9)),
                    borderSide: BorderSide(color: Color(0xffD9D9D9)))),
          ).pOnly(top: 76),
          const TextField(
            decoration: InputDecoration(
                fillColor: Color(0xffFCFCFC),
                filled: true,
                suffixIcon: Icon(Icons.remove_red_eye_outlined, size: 24),
                prefixIcon: Icon(Icons.lock_outline, size: 26),
                prefixIconColor: Color(0xa68b8b8b),
                suffixIconColor: Color(0xa68b8b8b),
                hintText: "Re-enter Password",
                hintStyle: TextStyle(color: Color(0xcc8b8b8b)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(9)),
                    borderSide: BorderSide(color: Color(0xffD9D9D9)))),
          ).pOnly(top: 15),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(9))),
                backgroundColor:
                    const MaterialStatePropertyAll(Color(0xff21879D)),
                padding: const MaterialStatePropertyAll(
                    EdgeInsets.symmetric(vertical: 17, horizontal: 70))),
            child: "Update".text.size(20).bold.make(),
          ).pOnly(top: 33)
        ]).px(40),
      ),
    );
  }
}
