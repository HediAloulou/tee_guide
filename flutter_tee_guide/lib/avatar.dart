import 'package:flutter/material.dart';
import 'package:teeguide/advice.dart';
import 'package:teeguide/community.dart';
import 'package:teeguide/startchat.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Main content in the center
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Text "Get in touch with Adam" with custom color and bold
                Text(
                  'Get in touch\nwith TG', // Split into two lines
                  textAlign: TextAlign.center, // Center the text
                  style: TextStyle(
                    fontSize: 24,
                    color: Color(0xFF01696E), // Hexadecimal color code
                    fontWeight: FontWeight.bold, // Make text bold
                  ),
                ),
                SizedBox(height: 20), // Add some space

                // Large image button
                InkWell(
                  onTap: () {
                    // Add navigation logic here
                  },
                  child: Image.asset(
                    'assets/avatar.png', // Adjust path to your large image
                    height: 300,
                    width: 300, // Adjust height and width of the image
                  ),
                ),

                SizedBox(height: 40), // Increased space between image and button

                // Button "Start chat" with background color and white text color
                ElevatedButton(
                  onPressed: () {
                    // Navigate to StartChat page
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Startchat()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF01696E), // Background color
                    onPrimary: Colors.white, // Text color
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 120), // Adjust padding for larger button
                    shape: RoundedRectangleBorder( // Make button rectangular
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                  child: Text(
                    'Start Chat',
                    style: TextStyle(fontSize: 18), // Adjust text size
                  ),
                ),
              ],
            ),
          ),
          // Back arrow button in the top left corner
          Align(
            alignment: Alignment.topLeft,
            child: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => Navigator.pop(context),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
      child: Container(
      height: 60, // Adjust the height as needed
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.chat, color: Color(0xFF01696E)),
                  onPressed: () {
                    // Handle chat button press
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: IconButton(
              icon: Icon(Icons.people), // Icon representing the community
              onPressed: () {
                // Handle community button press
                // Navigate to the community page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CommunityPage()),
                );
              },
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.category),
                  onPressed: () {
                    // Handle category button press
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Advice()),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    ),

    );
  }
}
