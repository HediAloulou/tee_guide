import 'package:flutter/material.dart';

class CommunityPage extends StatelessWidget {
  final List<String> features = [
    'Chat with other members',
    'Set and track goals',
    'View profiles of other members',
    'Participate in events',
    'Share experiences',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'TeeGuide Community',
          style: TextStyle(color: Colors.black87),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.black87),
            onPressed: () {
              // Implement search functionality
            },
          ),
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.black87),
            onPressed: () {
              // Implement notifications functionality
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Join the Community',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xff01696E),
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color(0xff01696E),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Get Motivated!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Join our community and get motivated to achieve your goals with the help of AI and fellow teenagers!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      // Implement join community functionality
                    },
                    child: Text(
                      'Join Now',
                      style: TextStyle(
                        color: Color(0xff01696E),
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Community Features',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xff01696E),
              ),
            ),
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: features
                  .map(
                    (feature) => ListTile(
                  leading: Icon(Icons.star, color: Color(0xff01696E)),
                  title: Text(
                    feature,
                    style: TextStyle(color: Colors.black87, fontSize: 16),
                  ),
                  onTap: () {
                    // Implement feature functionality based on index
                  },
                ),
              )
                  .toList(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(Icons.chat),
                onPressed: () {
                  // Handle chat button press
                },
              ),
              IconButton(
                icon: Icon(Icons.people, color: Color(0xFF01696E)), // Colored people icon
                onPressed: () {
                  // Handle back button press
                },
              ),
              IconButton(
                icon: Icon(Icons.category),
                onPressed: () {
                  // Handle category button press
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
