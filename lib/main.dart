import 'package:flutter/material.dart';
import 'package:chat_updated/screens/welcome_screen.dart';
import 'package:chat_updated/screens/login_screen.dart';
import 'package:chat_updated/screens/registration_screen.dart';
import 'package:chat_updated/screens/chat_screen.dart';

void main() => runApp(FlashChat());

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomeScreen(),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ChatScreen.id: (context) => ChatScreen()
      }
    );
  }
}
