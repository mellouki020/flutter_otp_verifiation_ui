import 'package:flutter/material.dart';
import 'package:flutter_otp_verification_ui/welcome.dart';
import 'welcome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter OTP Verification',
      debugShowCheckedModeBanner: false,
      home: Welcome(),
    );
  }
}

