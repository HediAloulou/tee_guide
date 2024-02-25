import 'package:flutter/material.dart';

class CalendarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context); // Go back to the previous screen
          },
        ),
        title: Text(
          'My Calendar',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 4 * 4, // 4 days with 4 events each
              itemBuilder: (context, index) {
                DateTime startDate = DateTime(2024, 2, 19);
                DateTime eventDate = startDate.add(Duration(days: index ~/ 4));
                int eventIndex = index % 4;

                return EventCard(
                  event: Event(
                    title: getEventTitle(eventIndex),
                    startTime: eventDate.add(Duration(hours: 10)),
                    endTime: eventDate
                        .add(Duration(hours: 10 + (eventIndex + 1) * 2)),
                    location: getEventLocation(eventIndex),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  String getEventTitle(int index) {
    switch (index) {
      case 0:
        return 'Team Meeting';
      case 1:
        return 'Sports with Friends';
      case 2:
        return 'City Ride';
      case 3:
        return 'English Lesson';
      default:
        return '';
    }
  }

  String getEventLocation(int index) {
    switch (index) {
      case 0:
        return 'Conference Room';
      case 1:
        return 'Sport Arena';
      case 2:
        return 'City Streets';
      case 3:
        return 'Language School';
      default:
        return '';
    }
  }
}

class Event {
  final String title;
  final DateTime startTime;
  final DateTime endTime;
  final String location;

  Event({
    required this.title,
    required this.startTime,
    required this.endTime,
    required this.location,
  });
}

class EventCard extends StatelessWidget {
  final Event event;

  EventCard({
    required this.event,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              event.title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              '${event.startTime.toLocal()} - ${event.endTime.toLocal()}',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 8),
            Text(
              event.location,
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
