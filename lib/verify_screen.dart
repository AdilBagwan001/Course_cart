import 'package:flutter/material.dart';
import 'home_screen.dart';


class VerifyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Verify OTP',
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
          children: [  Container(
              margin: EdgeInsets.only(top: 20),
              child: Image.asset(
                'assets/images/verify.png',
                width: 245,
                height: 255,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Enter OTP',
              style: TextStyle(
                color: Color.fromRGBO(42, 42, 42, 1),
                fontFamily: "Plus Jakarta Sans",
                fontSize: 26.318,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.263,
              ),
            ),
            Text(
              'An 4 digit OTP has  been sent to',
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
             Text(
              '458-465-6466',
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
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.black,
                      width: 1.5,
                    ),
                  ),
                  child: Center(
                    child: TextFormField(
                      maxLength: 1,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        counterText: '',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.black,
                      width: 1.5,
                    ),
                  ),
                  child: Center(
                    child: TextFormField(
                      maxLength: 1,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        counterText: '',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.black,
                      width: 1.5,
                    ),
                  ),
                  child: Center(
                    child: TextFormField(
                      maxLength: 1,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        counterText: '',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.black,
                      width: 1.5,
                    ),
                  ),
                  child: Center(
                    child: TextFormField(
                      maxLength: 1,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        counterText: '',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),
            Container(
  width: double.infinity, // Take full width
  height: 56.325, // Set the desired height
  margin: EdgeInsets.symmetric(horizontal: 20),
  child: ElevatedButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => homeScreen()),
      );
    },
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(17.601),
      ),
      padding: EdgeInsets.symmetric(horizontal: 20),
      backgroundColor: Color(0xFF4E74F9),
    ),
    child: Text(
      'Verify',
      style: TextStyle(
        fontSize: 16.427,
        fontWeight: FontWeight.w500,
        fontFamily: "Plus Jakarta Sans",
        color: Colors.white,
      ),
    ),
  ),
)


            
          ],
        ),
      ),
    );
  }
}
