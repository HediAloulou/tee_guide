import 'package:flutter/material.dart';
import 'signin_page.dart';
import 'complete_page.dart'; // Import the file containing CompletePage class
import 'avatar.dart'; // Import the file containing AvatarPage class

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign in',
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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 10.0), // Added SizedBox for spacing
            Text(
              'Hello There',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.black, // Set the color to black
              ),
            ),
            const SizedBox(height: 15.0),
            Text(
              'Please enter your email & password to create an account',
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.grey, // Set the color to grey
              ),
            ),
            const SizedBox(height: 20.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Your Email', // Label for email field
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black, // Set the color to black
                    fontWeight: FontWeight.bold, // Make the text bold
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30.0), // Added SizedBox for spacing
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Create Password', // Label for password field
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black, // Set the color to black
                    fontWeight: FontWeight.bold, // Make the text bold
                  ),
                ),
                TextField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: 'Password',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25.0),

            const SizedBox(height: 20.0),
            Center(
              child: SizedBox(
                width: double.infinity,
                height: 50.0,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CompletePage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  child: const Text(
                    'Continue',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            Center(
              child: SizedBox(
                width: double.infinity,
                height: 40.0,
                child: TextButton(
                  onPressed: () {},
                  child: const Text('Forgot password?'),
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Already have an account?'),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignInPage(),
                      ),
                    );
                  },
                  child: const Text('Sign in'),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Divider(
                    color: Colors.grey,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    'or continue with',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: Divider(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(Icons.mobile_screen_share),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.facebook),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
