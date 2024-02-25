import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'signup_page.dart';
import 'avatar.dart'; // Import the AvatarPage class

class CompletePage extends StatelessWidget {
  const CompletePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Complete Page',
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
      home: const CompletePg(),
    );
  }
}

class CompletePg extends StatefulWidget {
  const CompletePg({Key? key}) : super(key: key);

  @override
  _CompletePgState createState() => _CompletePgState();
}

class _CompletePgState extends State<CompletePg> {
  bool _rememberMe = false;

  double buttonWidth = 140;
  double buttonHeight = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20.0), // Add SizedBox above the text
            Text(
              'Complete your profile',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15), // Add space between the texts
            Text(
              'Please enter your details to complete your profile, don’t worry your details are private.',
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 30), // Add space between the text and image
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/user.png',
                width: 130,
                height: 130,
              ),
            ),
            const SizedBox(height: 20.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Full Name', // Label for full name field
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black, // Set the color to black
                    fontWeight: FontWeight.bold, // Make the text bold
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Full Name',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Phone Number', // Label for phone number field
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black, // Set the color to black
                    fontWeight: FontWeight.bold, // Make the text bold
                  ),
                ),
                TextField(
                  keyboardType: TextInputType.phone,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  decoration: InputDecoration(
                    hintText: '216 25 974 005',
                    prefixText: '+', // Add prefix text "+"
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Gender', // Label for email field
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black, // Set the color to black
                    fontWeight: FontWeight.bold, // Make the text bold
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Gender',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpPage()),
                    ); // Add functionality for back button
                  },
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    minimumSize: Size(buttonWidth, buttonHeight),
                    side: BorderSide(color: Colors.white), // Outline color
                    // Added border color and width
                    // You can adjust color and width as needed
                    // Adjust the color according to your requirements
                    // Adjust the width according to your requirements
                    backgroundColor: Colors.white,
                    padding: EdgeInsets.zero,
                    textStyle: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                  child: Ink(
                    child: Container(
                      width: buttonWidth,
                      height: buttonHeight,
                      alignment: Alignment.center,
                      child: Text(
                        'Back',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AvatarPage()), // Navigate to AvatarPage
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    minimumSize: Size(buttonWidth, buttonHeight),
                  ),
                  child: Text(
                    'Continue',
                    style: TextStyle(fontSize: 22),
                  ),
                ),
              ],
            ),
            // Add your additional widgets here
          ],
        ),
      ),
    );
  }
}
