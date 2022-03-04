
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_verification_ui/register.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,  
      backgroundColor: Color(0xfff7f6fb),
      body: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 24, horizontal: 32),
        child: Column(
          children: [
            Image.asset(
              'assets/images/illustration-1.png',
            width: 240,
            ),
            SizedBox(
              height: 18,
            ),
            Text(
              "Let's get started",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Never a better time than no to start.",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: Colors.black38,
              ),
            ),
            SizedBox(
              height: 38,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Register(),
                  ),
                  );
                },
                style: ButtonStyle(
                  foregroundColor:
                    MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.purple),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(14),
                  child: Text(
                    'Create Account',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              )
            ),
            SizedBox(
              height: 22,
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    foregroundColor:
                    MaterialStateProperty.all<Color>(Colors.purple),
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(14),
                    child: Text('Login',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                )
            ),
          ],
        ),
       ),
      ),
    );
  }
}

