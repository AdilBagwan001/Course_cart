import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'add_event_screen.dart'; // Import the add_event_screen.dart file

class CalendarPage extends StatefulWidget {
  @override
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  DateTime? _selectedDate;
  Map<DateTime, List<dynamic>> _events = {}; // Map to store events

  @override
  Widget build(BuildContext context) {
    // Define the range of dates visible in the calendar
    final DateTime now = DateTime.now();
    final DateTime firstDay = DateTime(now.year - 1, now.month - 1, now.day);
    final DateTime lastDay = DateTime(now.year + 1, now.month + 2, now.day);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Calendar',
          style: TextStyle(
            color: Color(0xFF2A2A2A),
            fontFamily: 'Plus Jakarta Sans',
            fontSize: 30,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
            letterSpacing: 0.9,
            height: 0.93333,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          TableCalendar(
            focusedDay: now,
            firstDay: firstDay,
            lastDay: lastDay,
            headerStyle: HeaderStyle(
              titleCentered: true,
              formatButtonVisible: false,
              titleTextStyle: TextStyle(
                color: Color(0xFF222B45),
                fontFamily: 'Plus Jakarta Sans',
                fontSize: 20,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
                letterSpacing: 0.9,
                height: 1.0,
              ),
              leftChevronIcon: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xFFCED3DE),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  Icons.chevron_left,
                  color: Color(0xFFCED3DE),
                  size: 30,
                ),
              ),
              rightChevronIcon: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xFFCED3DE),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  Icons.chevron_right,
                  color: Color(0xFFCED3DE),
                  size: 30,
                ),
              ),
            ),
            headerVisible: true,
            startingDayOfWeek: StartingDayOfWeek.monday,
            calendarStyle: CalendarStyle(
              outsideDaysVisible: true,
            ),
            availableCalendarFormats: const {
              CalendarFormat.month: 'Month',
            },
            calendarFormat: CalendarFormat.month,
            calendarBuilders: CalendarBuilders(
              defaultBuilder: (context, date, _) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedDate = date;
                      print('Selected Date: $_selectedDate');
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AddEventScreen(selectedDate: date),
                      ),
                    ).then((value) {
                      // Handle the data returned from AddEventScreen
                      if (value != null && value['eventName'] != null && value['notes'] != null) {
                        // Add the event to the events map
                        setState(() {
                          _events.update(date, (events) => [...events, value], ifAbsent: () => [value]);
                          print('Events: $_events');
                        });
                      }
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.all(4),
                    alignment: Alignment.center,
                    child: Text(
                      '${date.day}',
                      style: TextStyle(
                        color: Color(0xFF222B45),
                        fontFamily: 'Plus Jakarta Sans',
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                        height: 1.33,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Your Events',
            style: TextStyle(
              color: Color(0xFF222B45),
              fontFamily: 'Plus Jakarta Sans',
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: _events.length,
              itemBuilder: (context, index) {
                final DateTime eventDate = _events.keys.elementAt(index);
                final List<dynamic> eventDetails = _events[eventDate]!;
                final String eventName = eventDetails[0]['eventName'];
                final String notes = eventDetails[0]['notes'];

                // Check if the event type is "Workshop"
                bool isWorkshopEvent = eventDetails[0]['selectedCategory'] == 'Workshops';
                bool isConferenceEvent = eventDetails[0]['selectedCategory'] == 'Conferences';
                bool isWebinarEvent = eventDetails[0]['selectedCategory'] == 'Webinars';

                return Container(
                  color: isWorkshopEvent ? Color(0xFFEAE2F8) : isConferenceEvent ? Color.fromRGBO(0, 179, 131, 0.07) : isWebinarEvent ? Color.fromRGBO(0, 149, 255, 0.07) : null,
                  child: ListTile(
                    title: Text(
                      eventName,
                      style: TextStyle(
                        color: Color(0xFF222B45),
                        fontFamily: 'Plus Jakarta Sans',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                        height: 1.19,
                      ),
                    ),
                    subtitle: Text(
                      notes,
                      style: TextStyle(
                        color: Color(0xFF8F9BB3),
                        fontFamily: 'Plus Jakarta Sans',
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.75,
                        height: 1.17,
                      ),
                    ),
                    trailing: Text(
                      '${eventDate.day}/${eventDate.month}/${eventDate.year}',
                      style: TextStyle(
                        color: Color(0xFF8F9BB3),
                        fontFamily: 'Plus Jakarta Sans',
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.75,
                        height: 1.167,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
