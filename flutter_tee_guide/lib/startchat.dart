import 'package:flutter/material.dart';
import 'package:teeguide/advice.dart'; // Import the Advice page

class Startchat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Guide',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 1,
            color: Colors.grey,
          ),
          SizedBox(height: 60),
          Image.asset(
            'assets/user.png', // Adjust path to your logo image
            height: 120,
            width: 120,
          ),
          SizedBox(height: 200),
          Text(
            'Ask me whatever you want',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 60),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.grey[200],
                    ),
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.mic),
                          onPressed: () {
                            // Handle mic button press
                          },
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Ask me anything...',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.send),
                          onPressed: () {
                            // Handle send button press
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
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
                child: GestureDetector(
                  onTap: () {
                    // Navigate to Advice page
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Advice()),
                    );
                  },
                  child: Image.asset(
                    'assets/logo_TeeGuide.png', // Adjust path to your logo image
                    height: 40,
                    width: 40,
                  ),
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
