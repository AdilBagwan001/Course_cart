import 'package:flutter/material.dart';
import 'verify_screen.dart';

class ForgotScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back), // Set the icon
          onPressed: () {
            Navigator.of(context).pop(); // This will pop the current screen off the navigation stack
          },
        ),
        title: Text(
          'Forgot Password',
          style: TextStyle(
            color: Color.fromRGBO(42, 42, 42, 1),
            fontFamily: "Plus Jakarta Sans",
            fontSize: 30,
            fontWeight: FontWeight.w700,
            letterSpacing: 0.9,
            height: 0.93333,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Image.asset(
                'assets/images/forgot.png',
                width: 245,
                height: 255,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Forgot Password?',
              style: TextStyle(
                color: Color.fromRGBO(42, 42, 42, 1),
                fontFamily: "Plus Jakarta Sans",
                fontSize: 26.318,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.263,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Don’t worry! it happens. Please enter phone number associated with your account',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromRGBO(42, 42, 42, 1),
                fontFamily: "Plus Jakarta Sans",
                fontSize: 15.352,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.154,
                height: 1.57143,
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Text(
                    'Mobile Number',
                    style: TextStyle(
                      color: Color.fromRGBO(42, 42, 42, 1),
                      fontFamily: "Plus Jakarta Sans",
                      fontSize: 16.427,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.821,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: double.infinity, // Take full width
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17.601),
                      border: Border.all(
                        color: Color.fromRGBO(209, 209, 209, 1),
                        width: 1.173,
                      ),
                      color: Color.fromRGBO(253, 253, 253, 1),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter your mobile number',
                        hintStyle: TextStyle(
                          color: Color.fromRGBO(159, 159, 159, 1),
                          fontFamily: "Plus Jakarta Sans",
                          fontSize: 16.427,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.821,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => VerifyScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17.601),
                      ),
                      backgroundColor: Color(0xFF4E74F9),
                      minimumSize: Size(double.infinity, 56.325),
                    ),
                    child: Text(
                      'Get OTP',
                      style: TextStyle(
                        fontSize: 16.427,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Plus Jakarta Sans",
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
