import 'package:flutter/material.dart';
import 'package:subscription_app/widgets/app_bar.dart';
import 'package:velocity_x/velocity_x.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: Colors.white30,
        body: Column(children: [
          const MyAppBar(title: 'Forgot Password'),
          "Please enter your email registered with this account"
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
                prefixIcon: Icon(Icons.email_outlined, size: 26),
                prefixIconColor: Color(0xa68b8b8b),
                hintText: "Email",
                hintStyle: TextStyle(color: Color(0xcc8b8b8b)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(9)),
                    borderSide: BorderSide(color: Color(0xffD9D9D9)))),
          ).pOnly(top: 106),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(9))),
                backgroundColor:
                    const MaterialStatePropertyAll(Color(0xff21879D)),
                padding: const MaterialStatePropertyAll(
                    EdgeInsets.symmetric(vertical: 17, horizontal: 70))),
            child: "Next".text.size(20).bold.make(),
          ).pOnly(top: 33)
        ]).px(40),
      ),
    );
  }
}
