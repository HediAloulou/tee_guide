import 'package:flutter/material.dart';
import 'advice.dart';
import 'score.dart';
import 'calendar.dart';

class Schedule extends StatelessWidget {
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
          'Today s Schedule',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey[300],
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _ScheduleSection(
                title: 'Physics',
                time: '8:00 AM - 12 AM',
                color: Colors.blue,
              ),
              _ScheduleSection(
                title: 'Mathematics',
                time: '4 PM - 8 PM',
                color: Colors.green,
              ),
              _ScheduleSection(
                title: 'Rest',
                time: '12 PM - 2 PM',
                color: Colors.orange,
              ),
              _ScheduleSection(
                title: 'Sports',
                time: '2 PM - 4 PM',
                color: Colors.red,
              ),
              _ScheduleSection(
                title: 'Hobbies',
                time: '8 PM - 10 PM',
                color: Colors.purple,
              ),
              SizedBox(height: 16.0),
              GestureDetector(
                onTap: () {
                  // Navigate to the 'Google Calendar' screen
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CalendarScreen()),
                  );
                },
                child: Text(
                  'Check your main events in Google Calendar',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.lightbulb,
              color: Colors.grey,
            ),
            label: 'Advice',
            backgroundColor: Colors.grey,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.star,
              color: Colors.grey,
            ),
            label: 'Score',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.schedule,
              color: Colors.blue,
            ),
            label: 'Schedule',
          ),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Advice(),
              ),
            );
          } else if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ScoresPage()),
            );
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Schedule()),
            );
          }
        },
      ),
    );
  }
}

class _ScheduleSection extends StatelessWidget {
  final String title;
  final String time;
  final Color color;

  _ScheduleSection({
    required this.title,
    required this.time,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            'Time: $time',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}
