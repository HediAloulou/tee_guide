import 'package:flutter/material.dart';
import 'signin_page.dart'; // Import the SignInPage widget

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: MaterialColor(
          0xFF01696E,
          <int, Color>{
            50: Color(0xFFE0F3F3),
            100: Color(0xFFB3DFE3),
            200: Color(0xFF80CACC),
            300: Color(0xFF4DAFB6),
            400: Color(0xFF269EA3),
            500: Color(0xFF01696E), // Your desired primary color
            600: Color(0xFF015F64),
            700: Color(0xFF01555A),
            800: Color(0xFF014B50),
            900: Color(0xFF01383E),
          },
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(fontSize: 16.0),
        ),
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // No appBar here
      body: Center(
        child: Column(
          mainAxisAlignment:
          MainAxisAlignment.start, // Align children at the top
          crossAxisAlignment:
          CrossAxisAlignment.start, // Align children to the left
          children: [
            SizedBox(height: 130),
            Center(
              child: Image.asset(
                'assets/logo_TeeGuide.png', // Path to your image
                width: 350, // Adjust width as needed
                height: 200, // Adjust height as needed
              ),
            ),
            SizedBox(height: 50), // Add some space between image and text
            Padding(
              padding: EdgeInsets.only(
                  left: 20), // Add padding to the left of the text
              child: Text(
                'Introduction to TeeGuide',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 15), // Add some space between text
            Padding(
              padding: EdgeInsets.only(
                  left: 20, right: 20), // Add padding to the left
              child: Text(
                'Welcome dear user, we are pleased to have you in our application. You will be astonished about the options you will find in our app.',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(height: 40), // Add some space between text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ButtonBar(
                alignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 110.0,
                    height: 45.0,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignInPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      child: const Text(
                        'Next',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
