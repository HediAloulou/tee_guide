import 'package:flutter/material.dart';
import 'package:teeguide/schedule.dart';
import 'package:teeguide/score.dart';


class Advice extends StatelessWidget {
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
          'Your Daily Advice',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildAdviceCard(
                "1. Start your day with a positive affirmation. Remind yourself of your strengths and capabilities. You've got this!",
              ),
              buildAdviceCard(
                "2. Take breaks throughout the day. Step outside, breathe in fresh air, and let go of any tension. A moment of self-care can make a big difference.",
              ),
              buildAdviceCard(
                "3. Connect with friends and loved ones. Share your thoughts and feelings. Sometimes, a supportive conversation can ease the weight on your shoulders.",
              ),
              buildAdviceCard(
                "4. Embrace challenges as opportunities for growth. Each obstacle you face brings a chance to learn and become stronger.",
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.lightbulb),
            label: 'Advice',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Score',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.schedule),
            label: 'Schedule',
          ),
        ],
        onTap: (int index) {
          if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Schedule()),
            );
          } else if (index == 1) {
            // Check if the "Score" tab is tapped
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ScoresPage()),
            );
          }
        },
      ),
    );
  }

  Widget buildAdviceCard(String advice) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Color(0xFF01696E),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Text(
        advice,
        style: TextStyle(
          color: Colors.white,
          fontSize: 16.0,
        ),
      ),
    );
  }
}
