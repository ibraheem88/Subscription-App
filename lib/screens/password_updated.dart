import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class PasswordUpdated extends StatelessWidget {
  const PasswordUpdated({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: Colors.white30,
        body: Column(children: [
          "Password Updated"
              .text
              .black
              .fontFamily(GoogleFonts.syne().fontFamily.toString())
              .size(28)
              .make()
              .pOnly(top: 8, left: 33)
              .centered(),
          SvgPicture.asset('assets/images/done.svg').pOnly(top: 38),
          "Your Password has been updated".text.size(18).make().pOnly(top: 16),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(9))),
                backgroundColor:
                    const MaterialStatePropertyAll(Color(0xff21879D)),
                padding: const MaterialStatePropertyAll(
                    EdgeInsets.symmetric(vertical: 17, horizontal: 70))),
            child: "Login".text.size(20).bold.make(),
          ).pOnly(top: 38)
        ]).px(40).pOnly(top: 188),
      ),
    );
  }
}
