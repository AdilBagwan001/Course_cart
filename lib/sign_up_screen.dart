import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sign Up',
          style: TextStyle(
            color: Color.fromRGBO(42, 42, 42, 1), // Adjust color
            fontFamily: "Plus Jakarta Sans",
            fontSize: 30,
            fontWeight: FontWeight.w700,
            letterSpacing: 0.9,
            height: 0.93333, // Adjust line height
          ),
        ),
        centerTitle: true, // Align title to center
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20), // Add margin to top
              child: Image.asset(
                'assets/images/a1.png',
                width: 352,
                height: 197,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20), // Adjust top space
                  Text(
                    'First Name',
                    style: TextStyle(
                      color: Color.fromRGBO(42, 42, 42, 1), // Adjust color
                      fontFamily: "Plus Jakarta Sans",
                      fontSize: 16.427,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.821,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: double.infinity, // Take full width
                    height: 56.325,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17.601),
                      border: Border.all(
                        color: Color.fromRGBO(209, 209, 209, 1), // Adjust color
                        width: 1.173,
                      ),
                      color: Color.fromRGBO(253, 253, 253, 1), // Adjust color
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter your first name',
                          hintStyle: TextStyle(
                            color: Color.fromRGBO(159, 159, 159, 1), // Adjust color
                            fontFamily: "Plus Jakarta Sans",
                            fontSize: 16.427,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.821,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Last Name',
                    style: TextStyle(
                      color: Color.fromRGBO(42, 42, 42, 1), // Adjust color
                      fontFamily: "Plus Jakarta Sans",
                      fontSize: 16.427,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.821,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: double.infinity, // Take full width
                    height: 56.325,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17.601),
                      border: Border.all(
                        color: Color.fromRGBO(209, 209, 209, 1), // Adjust color
                        width: 1.173,
                      ),
                      color: Color.fromRGBO(253, 253, 253, 1), // Adjust color
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter your last name',
                          hintStyle: TextStyle(
                            color: Color.fromRGBO(159, 159, 159, 1), // Adjust color
                            fontFamily: "Plus Jakarta Sans",
                            fontSize: 16.427,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.821,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Mobile Number',
                    style: TextStyle(
                      color: Color.fromRGBO(42, 42, 42, 1), // Adjust color
                      fontFamily: "Plus Jakarta Sans",
                      fontSize: 16.427,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.821,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: double.infinity, // Take full width
                    height: 56.325,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17.601),
                      border: Border.all(
                        color: Color.fromRGBO(209, 209, 209, 1), // Adjust color
                        width: 1.173,
                      ),
                      color: Color.fromRGBO(253, 253, 253, 1), // Adjust color
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter your mobile number',
                          hintStyle: TextStyle(
                            color: Color.fromRGBO(159, 159, 159, 1), // Adjust color
                            fontFamily: "Plus Jakarta Sans",
                            fontSize: 16.427,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.821,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Implement sign-up logic
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17.601),
                      ),
                      backgroundColor: Color(0xFF4E74F9), // Use the hexadecimal color code
                      minimumSize: Size(double.infinity, 56.325),
                    ),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 16.427,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Plus Jakarta Sans",
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: Column(
                      children: [
                        Text(
                          'Do you already have an account? sign in',
                          style: TextStyle(
                            color: Color.fromRGBO(42, 42, 42, 1), // Adjust color
                            fontFamily: "Plus Jakarta Sans",
                            fontSize: 16.427,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.821,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10),
                        Text(
                          'or',
                          style: TextStyle(
                            color: Color.fromRGBO(42, 42, 42, 1), // Adjust color
                            fontFamily: "Plus Jakarta Sans",
                            fontSize: 16.427,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.821,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Continue with Facebook logic
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 20), // Adjust padding
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17.601), // Button border radius
                        side: BorderSide(color: Color.fromRGBO(209, 209, 209, 1)), // Add border
                      ),
                      backgroundColor: Colors.white, // Button background color
                      minimumSize: Size(double.infinity, 56.325), // Fill width
                    ),
                    child: Text(
                      'Continue with Facebook',
                      style: TextStyle(
                        fontSize: 16.427, // Adjust font size
                        fontWeight: FontWeight.w500,
                        fontFamily: "Plus Jakarta Sans",
                        color: Color.fromRGBO(42, 42, 42, 1), // Button text color
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      // Continue with Discord logic
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 20), // Adjust padding
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17.601), // Button border radius
                        side: BorderSide(color: Color.fromRGBO(209, 209, 209, 1)), // Add border
                      ),
                      backgroundColor: Colors.white, // Button background color
                      minimumSize: Size(double.infinity, 56.325), // Fill width
                    ),
                    child: Text(
                      'Continue with Discord',
                      style: TextStyle(
                        fontSize: 16.427, // Adjust font size
                        fontWeight: FontWeight.w500,
                        fontFamily: "Plus Jakarta Sans",
                        color: Color.fromRGBO(42, 42, 42, 1), // Button text color
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
