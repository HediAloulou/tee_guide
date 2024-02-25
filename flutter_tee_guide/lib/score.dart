import 'package:flutter/material.dart';
import 'advice.dart';
import 'schedule.dart'; // Import your Schedule class

class ScoresPage extends StatelessWidget {
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
          'Scores',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Divider(color: Colors.grey),
          SizedBox(height: 10),
          StaircaseUser(
            users: [
              {'name': 'User 1', 'score': 100},
              {'name': 'User 2', 'score': 90},
              {'name': 'User 3', 'score': 80},
              // Add more users here
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: userList.length - 3,
              itemBuilder: (context, index) {
                final user = userList[index + 3];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Color(0xff339DA4),
                    child: Text('${index + 4}',
                        style: TextStyle(color: Colors.white)),
                  ),
                  title: Text(user['name'],
                      style: TextStyle(color: Color(0xff01696E))),
                  subtitle: Text('Score: ${user['score']}',
                      style: TextStyle(color: Color(0xff01696E))),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.lightbulb),
            label: 'Advice',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Scores',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.schedule),
            label: 'Schedule',
          ),
        ],
        onTap: (index) {
          if (index == 0) {
            // Navigate to the 'Advice' screen
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Advice(),
              ),
            );
          } else if (index == 2) {
            // Navigate to the 'Schedule' screen
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Schedule(),
              ),
            );
          }
        },
      ),
    );
  }
}

class StaircaseUser extends StatelessWidget {
  final List<Map<String, dynamic>> users;

  const StaircaseUser({Key? key, required this.users}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        UserTile(user: users[1], rank: 1),
        UserTile(user: users[0], rank: 0),
        UserTile(user: users[2], rank: 2),
      ],
    );
  }
}

class UserTile extends StatelessWidget {
  final Map<String, dynamic> user;
  final int rank;

  const UserTile({Key? key, required this.user, required this.rank})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (rank == 0)
          Icon(
            Icons.star,
            color: Colors.yellow,
            size: 30,
          ),
        CircleAvatar(
          backgroundColor: Color(0xff01696E),
          child: Text('${rank + 1}', style: TextStyle(color: Colors.white)),
        ),
        SizedBox(height: 5),
        Text(user['name'], style: TextStyle(color: Color(0xff01696E))),
        Text('Score: ${user['score']}',
            style: TextStyle(color: Color(0xff01696E))),
      ],
    );
  }
}

List<Map<String, dynamic>> userList = [
  {'name': 'Ali', 'score': 100},
  {'name': 'Foulen', 'score': 90},
  {'name': 'Falten', 'score': 80},
  {'name': 'Mohamed', 'score': 70},
  {'name': 'Alex', 'score': 60},
  {'name': 'Alice', 'score': 50},
  {'name': 'Rabeb', 'score': 40},
  {'name': 'Sam', 'score': 30},
  // Add more users here
];
