import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:subscription_app/screens/forgot_password.dart';
import 'package:subscription_app/screens/login.dart';
import 'package:subscription_app/screens/onboarding.dart';
import 'package:subscription_app/screens/password_updated.dart';
import 'package:subscription_app/screens/reset_password.dart';
import 'package:subscription_app/screens/send_otp.dart';
import 'package:subscription_app/utilis/routes.dart';
import 'package:subscription_app/widgets/themes.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarIconBrightness: Brightness.dark,
    statusBarColor: Colors.transparent, // transparent status bar
  ));
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Themes.lightTheme,
      routes: {
        Routes.home: (context) => const Onboarding(),
        Routes.forgotPassword: (context) => const ForgotPassword(),
        Routes.sendOtp: (context) => const SendOtp(),
        Routes.resetPassword: (context) => const ResetPassword(),
        Routes.passwordUpdated: (contex) => const PasswordUpdated(),
        Routes.onboarding: (context) => const Onboarding(),
        Routes.login: (context) => const Login()
      },
      initialRoute: Routes.home,
    );
  }
}
