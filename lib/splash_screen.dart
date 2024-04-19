import 'dart:async';
import 'package:flutter/material.dart';
import 'sign_in_sign_up_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Timer to navigate to the next screen after 5 seconds
    Timer(Duration(seconds: 3), () {
      // Navigate to the sign-in or sign-up screen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => SignInSignUpScreen(),
        ),
      );
    });

    return Scaffold(
      backgroundColor: Color(0xFF4E74F9), // Use the hexadecimal color code
      body: Center(
        child: Text(
          'CourseCart', // Your app name
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
