Project Name: TeeGuide

Description:
This repository contains the codebase for the Teen Mental Health Companion, a Flutter-based mobile application designed to assist teenagers in managing stress and anxiety. The application includes features such as an interactive avatar, a community platform, personalized guidance sessions, and integration with Google Calendar for scheduling.

Flutter Interfaces:
1. advice.dart: Interface for accessing personalized advice and guidance sessions.
2. avatar.dart: Interface for interacting with the interactive avatar feature.
3. calendar.dart: Interface for integrating with Google Calendar for scheduling appointments and tasks.
4. community.dart: Interface for accessing the community platform for peer support and interaction.
5. complete_page.dart: Interface for completing tasks or activities within the app.
6. firebase_options.dart: Configuration file for Firebase Firestore connection.
7. main.dart: Main entry point of the Flutter application.
8. schedule.dart: Interface for managing and viewing personalized schedules.
9. score.dart: Interface for tracking and viewing user scores or progress.
10. signin_page.dart and signup_page.dart: Interfaces for user authentication and registration.
11. startchat.dart: Interface for initiating chat sessions or interactions within the app.

*Firebase Firestore:*
- firebase_options.dart: Configuration file for connecting to Firebase Firestore, facilitating real-time data storage and synchronization.

Models:
- tee_guide_Models.ipynb: Google colab note book containing the implementation of the three machine learning models used for personalized guidance sessions, including speech-to-text conversion, recommendation generation and scheduling optimization, and speech to text (we used tensorflow and transformers).

Getting Started:
To run the application locally, follow the instructions provided in the README file. Ensure that Flutter and necessary dependencies are installed on your development environment. Connect a mobile device or emulator and launch the application using flutter run.

Contributing:
Contributions to this project are welcome! If you'd like to contribute, please fork the repository, make your changes, and submit a pull request. Be sure to follow the project's coding conventions and guidelines outlined in the CONTRIBUTING file.

License:
This project is licensed under the TeeGuide License.
