import 'package:flutter/material.dart';
import 'calendar.dart'; // Import CalendarPage

class homeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<homeScreen> {
  bool _isEditingText = false;
  TextEditingController _searchQueryController = TextEditingController();

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (index == 3) { // Index 3 corresponds to the calendar button
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CalendarPage()), // Navigate to CalendarPage
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 428,
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color(0xFF4E74F9),
                    Color(0xFF788ED9),
                  ],
                  stops: [0.0, 0.9041],
                ),
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(16, 24, 16, 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 48),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 16),
                          child: Image.asset(
                            'assets/images/user.png',
                            width: 36,
                            height: 36,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Hi, Usama',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Expanded(child: Container()),
                        Container(
                          margin: EdgeInsets.only(right: 16),
                          child: Image.asset(
                            'assets/images/notification.png',
                            width: 56,
                            height: 56,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Text(
                      'Dashboard',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 28),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _isEditingText = true;
                        });
                      },
                      child: Container(
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFF5F5F5),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          children: [
                            Expanded(
                              child: _isEditingText
                                  ? TextField(
                                      controller: _searchQueryController,
                                      autofocus: true,
                                      decoration: InputDecoration(
                                        hintText: "Search courses",
                                        border: InputBorder.none,
                                        hintStyle: TextStyle(
                                          color: Colors.grey[500],
                                          fontSize: 16,
                                        ),
                                      ),
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                      ),
                                    )
                                  : Text(
                                      'Search courses',
                                      style: TextStyle(
                                        color: Colors.grey[500],
                                        fontSize: 16,
                                      ),
                                    ),
                            ),
                            Icon(
                              Icons.search,
                              color: Colors.grey[500],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 16), // Added space between the two containers
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text(
                    'Ongoing Courses',
                    style: TextStyle(
                      color: Color(0xFF000000),
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Text(
                    'View All',
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 0.5),
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ],
            ),
            
            SizedBox(height: 10), // Added space between the two containers
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 270, // Decreased width
                    height: 150,
                    margin: EdgeInsets.only(left: 20 ,right: 20), // Added margin between images
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/ui1.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: 270, // Decreased width
                    height: 150,
                    margin: EdgeInsets.only(right: 16), // Added margin between images
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/ps1.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 16), // Added space between the two containers
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text(
                    'Saved Courses',
                    style: TextStyle(
                      color: Color(0xFF000000),
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right:16),
                  child: Text(
                    'View All',
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 0.5),
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ],
            ),
            
            SizedBox(height: 10), // Added space between the two containers
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 310, // Decreased width
                    height: 186,
                    margin: EdgeInsets.only(left: 20 ,right: 20,bottom: 20), // Added margin between images
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/saved4.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: 310, // Decreased width
                    height: 186,
                    margin: EdgeInsets.only(right: 16,bottom: 20), // Added margin between images
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/saved3.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            label: 'My Courses',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Add Course',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: const Color.fromARGB(255, 51, 34, 34),
        onTap: _onItemTapped,
      ),
    );
  }
}
