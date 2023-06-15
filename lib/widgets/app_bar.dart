import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyAppBar extends StatelessWidget {
  final String title;
  const MyAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          const Icon(
            Icons.arrow_back,
            opticalSize: 16,
          ),
          12.widthBox,
          title.text
              .size(28)
              .fontFamily(GoogleFonts.syne().fontFamily.toString())
              .semiBold
              .black
              .make()
        ],
      ).pOnly(top: 28),
    );
  }
}
