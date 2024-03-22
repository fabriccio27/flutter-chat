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
      theme: ThemeData.dark().copyWith(
        textTheme: const TextTheme(
          body1: TextStyle(color: Colors.black54),
        ),
      ),
      home: WelcomeScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomeScreen(),
        '/login': (context) => LoginScreen(),
        '/registration': (context) => RegistrationScreen(),
        '/chat': (context) => ChatScreen()
      }
    );
  }
}
