import 'package:flutter/material.dart';
import 'dart:ui';

import 'sign_in_screen.dart'; // Import the SignInScreen widget
import 'sign_up_screen.dart'; // Import the SignUpScreen widget

class SignInSignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Flexible(
            child: Text(
              ' CourseCart ',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromRGBO(22, 28, 43, 1), // Adjust color
                fontFamily: "Plus Jakarta Sans",
                fontSize: 33.856,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
                letterSpacing: 0.0,
                height: 1.219, // Adjust line height
              ),
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/girl.png'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.5),
                  BlendMode.lighten,
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Navigate to the sign-in screen
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignInScreen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF4E74F9), // Change button background color
                        minimumSize: Size(double.infinity, 56.325), // Fill width
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10), // Set border radius
                        ),
                      ),
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Plus Jakarta Sans",
                          fontSize: 16.427,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.821,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'or',
                          style: TextStyle(
                            color: Colors.black, // Change text color to white
                            fontFamily: "Plus Jakarta Sans",
                            fontSize: 16.427,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.821,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        // Navigate to the sign-up screen
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUpScreen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white, // Button background color
                        minimumSize: Size(double.infinity, 56.325), // Fill width
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10), // Set border radius
                        ),
                      ),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Color.fromRGBO(22, 28, 43, 1),
                          fontFamily: "Plus Jakarta Sans",
                          fontSize: 16.427,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.821,
                        ),
                      ),
                    ),
                    SizedBox(height: 50), // Add space between buttons and bottom of screen
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
