import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widgets/app_bar.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
          backgroundColor: Colors.white30,
          body: Column(children: [
            const MyAppBar(title: 'Login'),
            ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.only(top: 0),
              children: [
                "Welcome back! Please login to continue"
                    .text
                    .black
                    .size(18)
                    .make()
                    .centered()
                    .pOnly(top: 8, left: 33),
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
                ).pOnly(top: 107),
                const TextField(
                  decoration: InputDecoration(
                      fillColor: Color(0xffFCFCFC),
                      filled: true,
                      prefixIcon: Icon(Icons.lock_outline, size: 26),
                      suffixIcon: Icon(Icons.remove_red_eye_outlined, size: 24),
                      suffixIconColor: Color(0xa68b8b8b),
                      prefixIconColor: Color(0xa68b8b8b),
                      hintText: "Password",
                      hintStyle: TextStyle(color: Color(0xcc8b8b8b)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(9)),
                          borderSide: BorderSide(color: Color(0xffD9D9D9)))),
                ).pOnly(top: 15),
                ConstrainedBox(
                  constraints: const BoxConstraints(minWidth: double.infinity),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(9))),
                        backgroundColor:
                            const MaterialStatePropertyAll(Color(0xff21879D)),
                        padding: const MaterialStatePropertyAll(
                            EdgeInsets.symmetric(vertical: 17))),
                    child: "Log In".text.size(20).bold.make(),
                  ).pOnly(top: 50),
                ),
                "Forgot Password"
                    .text
                    .make()
                    .pOnly(top: 15)
                    .box
                    .alignCenterRight
                    .make(),
                "Or Log In with".text.size(18).make().centered().pOnly(top: 54),
                Image.asset(
                  'assets/images/googleLogo.jpg',
                  width: 62,
                  height: 62,
                ).pOnly(top: 29),
                HStack([
                  "Don’t have an account?".text.size(18).make(),
                  "Create Now"
                      .text
                      .color(const Color(0xff21879D))
                      .size(18)
                      .make()
                ]).centered().pOnly(top: 29),
                Image.asset('assets/images/logo.jpg').pOnly(top: 62, bottom: 81)
              ],
            ).expand()
          ])).px(40),
    );
  }
}
