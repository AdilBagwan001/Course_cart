// add_event_screen.dart
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AddEventScreen extends StatefulWidget {
  final DateTime selectedDate;

  const AddEventScreen({Key? key, required this.selectedDate}) : super(key: key);

  @override
  _AddEventScreenState createState() => _AddEventScreenState();
}

class _AddEventScreenState extends State<AddEventScreen> {
  late TextEditingController eventNameController;
  late TextEditingController notesController;
  late String formattedDate;
  String selectedCategory = 'Workshops'; // Add selectedCategory variable
  bool isNewCategoryVisible = false; // Add isNewCategoryVisible variable
  TextEditingController newCategoryController = TextEditingController(); // Controller for the new category text field

  @override
  void initState() {
    super.initState();
    eventNameController = TextEditingController();
    notesController = TextEditingController();
    formattedDate = DateFormat('MMM-dd-yyyy').format(widget.selectedDate);
  }

  @override
  void dispose() {
    eventNameController.dispose();
    notesController.dispose();
    super.dispose();
  }

  void _saveEvent(BuildContext context) {
    String eventName = eventNameController.text;
    String notes = notesController.text;
    DateTime selectedDate = widget.selectedDate;

    // Return event details to the previous screen
    Navigator.pop(context, {'eventName': eventName, 'notes': notes, 'selectedDate': selectedDate, 'selectedCategory': selectedCategory}); // Include selected category
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add New Event',
          style: TextStyle(
            color: Color(0xFF222B45), // Title color
            fontFamily: 'Plus Jakarta Sans',
            fontSize: 25, // Increased font size
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w600,
            height: 28 / 30, // Adjusted line height
          ),
        ),
        centerTitle: true, // Center the title text
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            // Event Name TextField
            TextField(
              controller: eventNameController,
              decoration: InputDecoration(
                labelText: 'Event Name',
                labelStyle: TextStyle(color: Color(0xFF8F9BB3)), // Set label text color
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: Color(0xFFD0D7E5), // Light border color
                    width: 1,
                  ),
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12), // Adjusted padding
                suffixIcon: Icon(Icons.event, color: Color(0xFF8F9BB3)), // Icon on the right side of the text field
              ),
              style: TextStyle( // Added text style
                color: Colors.black, // Set text color to black
                fontFamily: 'Plus Jakarta Sans',
                fontSize: 15,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w500,
                height: 20 / 15, // Adjusted line height
              ),
            ),
            SizedBox(height: 10),
            // Description TextField
            TextField(
              controller: notesController,
              decoration: InputDecoration(
                labelText: 'Type the note here...', // Updated description
                labelStyle: TextStyle(color: Color(0xFF8F9BB3)), // Set label text color
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: Color(0xFFD0D7E5), // Light border color
                    width: 1,
                  ),
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12), // Adjusted padding
                suffixIcon: Icon(Icons.description, color: Color(0xFF8F9BB3)), // Icon on the right side of the text field
              ),
              maxLines: 3,
              style: TextStyle( // Added text style
                color: Colors.black, // Set text color to black
                fontFamily: 'Plus Jakarta Sans',
                fontSize: 15,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w500,
                height: 20 / 15, // Adjusted line height
              ),
            ),
            SizedBox(height: 10),
            // Selected Date Text
            TextField(
              decoration: InputDecoration(
                labelText: formattedDate,
                labelStyle: TextStyle(color: Color(0xFF8F9BB3)), // Set label text color
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: Color(0xFFD0D7E5), // Light border color
                    width: 1,
                  ),
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12), // Adjusted padding
                suffixIcon: Icon(Icons.calendar_today, color: Color(0xFF8F9BB3)), // Icon on the right side of the text field
              ),
              style: TextStyle( // Added text style
                color: Colors.black, // Set text color to black
                fontFamily: 'Plus Jakarta Sans',
                fontSize: 15,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w500,
                height: 20 / 15, // Adjusted line height
              ),
            ),
            SizedBox(height: 10),
            // Start and End Time Row
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Start Time',
                      labelStyle: TextStyle(color: Color(0xFF8F9BB3)), // Set label text color
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: Color(0xFFD0D7E5), // Light border color
                          width: 1,
                        ),
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12), // Adjusted padding
                      suffixIcon: Icon(Icons.access_time, color: Color(0xFF8F9BB3)), // Icon on the right side of the text field
                    ),
                    style: TextStyle( // Added text style
                      color: Colors.black, // Set text color to black
                      fontFamily: 'Plus Jakarta Sans',
                      fontSize: 15,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                      height: 20 / 15, // Adjusted line height
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'End Time',
                      labelStyle: TextStyle(color: Color(0xFF8F9BB3)), // Set label text color
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: Color(0xFFD0D7E5), // Light border color
                          width: 1,
                        ),
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12), // Adjusted padding
                      suffixIcon: Icon(Icons.access_time, color: Color(0xFF8F9BB3)), // Icon on the right side of the text field
                    ),
                    style: TextStyle( // Added text style
                      color: Colors.black, // Set text color to black
                      fontFamily: 'Plus Jakarta Sans',
                      fontSize: 15,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                      height: 20 / 15, // Adjusted line height
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            // Select Category Title
            Text(
              'Select Category:',
              style: TextStyle(
                color: Color(0xFF222B45), // Darker color
                fontFamily: 'Plus Jakarta Sans',
                fontSize: 15,
                fontWeight: FontWeight.bold, // Bold
              ),
            ),
            SizedBox(height: 5),
            // Options Row
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ChoiceChip(
                    label: Text('Workshops', style: TextStyle(color: Colors.black)),
                    selected: selectedCategory == 'Workshops',
                    onSelected: (selected) {
                      setState(() {
                        selectedCategory = 'Workshops';
                      });
                    },
                    backgroundColor: Color.fromRGBO(115, 91, 242, 0.07),
                    elevation: 0,
                    pressElevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(11),
                    ),
                  ),
                  SizedBox(width: 10), // Add gap between options
                  ChoiceChip(
                    label: Text('Conferences', style: TextStyle(color: Colors.black)),
                    selected: selectedCategory == 'Conferences',
                    onSelected: (selected) {
                      setState(() {
                        selectedCategory = 'Conferences';
                      });
                    },
                    backgroundColor: Color.fromRGBO(0, 179, 131, 0.07),
                    elevation: 0,
                    pressElevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  SizedBox(width: 10), // Add gap between options
                  ChoiceChip(
                    label: Text('Webinars', style: TextStyle(color: Colors.black)),
                    selected: selectedCategory == 'Webinars',
                    onSelected: (selected) {
                      setState(() {
                        selectedCategory = 'Webinars';
                      });
                    },
                    backgroundColor: Color.fromRGBO(0, 149, 255, 0.07),
                    elevation: 0,
                    pressElevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(11),
                    ),
                  ),
                  SizedBox(width: 10), // Add gap between options
                  // Add New Category Button
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isNewCategoryVisible = !isNewCategoryVisible;
                        if (isNewCategoryVisible) {
                          newCategoryController.clear();
                        }
                      });
                    },
                    child: Icon(
                      isNewCategoryVisible ? Icons.close : Icons.add_circle_outline,
                      color: Color(0xFF4E74F9),
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            // New Category Text Field
            if (isNewCategoryVisible)
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: TextField(
                  controller: newCategoryController,
                  decoration: InputDecoration(
                    labelText: 'New Category',
                    labelStyle: TextStyle(color: Color(0xFF8F9BB3)), // Set label text color
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        color: Color(0xFFD0D7E5), // Light border color
                        width: 1,
                      ),
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12), // Adjusted padding
                  ),
                  style: TextStyle( // Added text style
                    color: Colors.black, // Set text color to black
                    fontFamily: 'Plus Jakarta Sans',
                    fontSize: 15,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                    height: 20 / 15, // Adjusted line height
                  ),
                ),
              ),
            SizedBox(height: 20),
            // Save Event Button
            Container(
              width: 386,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: Color(0xFF4E74F9), // Set button background color
              ),
              child: TextButton(
                onPressed: () {
                  _saveEvent(context);
                },
                child: Text(
                  'Save Event',
                  style: TextStyle(
                    color: Color(0xFFFFFFFF), // Text color
                    fontFamily: 'Plus Jakarta Sans',
                    fontSize: 16,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600,
                    height: 22 / 16, // Line height
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
