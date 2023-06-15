import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Image.asset(
              'assets/images/Onboarding.jpg',
              height: 390,
            ).pOnly(top: 37),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 33),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    "ONE PLATFORM,"
                        .text
                        .size(32)
                        .semiBold
                        .fontFamily(GoogleFonts.syne().fontFamily.toString())
                        .make()
                        .pOnly(top: 54),
                    'manage all subscriptions'
                        .text
                        .size(23)
                        .fontFamily(GoogleFonts.syne().fontFamily.toString())
                        .make(),
                    "Featuring subscription management, payment reminders, and spending insights"
                        .text
                        .black
                        .make()
                        .pOnly(top: 24)
                  ],
                )),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9))),
                  backgroundColor:
                      const MaterialStatePropertyAll(Color(0xff21879D)),
                  padding: const MaterialStatePropertyAll(
                      EdgeInsets.symmetric(vertical: 17, horizontal: 89))),
              child: "I'm Ready to Begin".text.size(20).bold.make(),
            ).pOnly(top: 85)
          ],
        ),
      ),
    );
  }
}
