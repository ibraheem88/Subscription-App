import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widgets/app_bar.dart';

class SendOtp extends StatefulWidget {
  const SendOtp({super.key});

  @override
  State<SendOtp> createState() => _SendOtpState();
}

class _SendOtpState extends State<SendOtp> {
  OtpFieldController otpController = OtpFieldController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: Colors.white30,
        body: Column(children: [
          const MyAppBar(title: 'OTP Sent'),
          "Please enter 6 digit one time password sent to your email"
              .text
              .black
              .size(18)
              .make()
              .pOnly(top: 8, left: 33),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(bottom: 15, right: 15, left: 15),
            decoration: BoxDecoration(
                border: Border.all(
                    style: BorderStyle.solid, color: const Color(0xffD9D9D9)),
                borderRadius: BorderRadius.circular(9)),
            child: OTPTextField(
              controller: otpController,
              length: 6,
              width: MediaQuery.of(context).size.width,
              textFieldAlignment: MainAxisAlignment.spaceAround,
              otpFieldStyle: OtpFieldStyle(
                  enabledBorderColor: Colors.black,
                  focusBorderColor: Colors.black),
              fieldWidth: 23,
              fieldStyle: FieldStyle.underline,
              style: const TextStyle(fontSize: 17),
              onChanged: (pin) {
                //print("Changed: $pin");
              },
              onCompleted: (pin) {
                //print("Completed: $pin");
              },
            ),
          ).pOnly(top: 57),
          Row(
            children: [
              "Didn’t receive any code? ".text.make(),
              "Resend in 01:00".text.color(const Color(0xffEE2323)).make()
            ],
          ).pOnly(top: 17),
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
          ).pOnly(top: 64)
        ]).px(40),
      ),
    );
  }
}
