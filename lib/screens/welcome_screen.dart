import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:chat_updated/screens/login_screen.dart';
import 'package:chat_updated/screens/registration_screen.dart';
import 'package:chat_updated/components/PaddedLongButton.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  static const id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin {
  late AnimationController controller; 
  late Animation animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this
    );
    controller.forward();
    animation = CurvedAnimation(parent: controller, curve: Curves.decelerate);
    controller.addListener(() {
      setState(() {});
    });
  }

  // to clean resources
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.withOpacity(controller.value),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: [
                Hero(
                  tag: 'logo', 
                  child: Container(
                    height: animation.value,
                    child: Image.asset('images/logo.png'),
                  ),
                ),
                AnimatedTextKit(animatedTexts: [
                  TypewriterAnimatedText(
                  'Flash Chat',
                  textStyle: const TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                ]) 
              ],
            ),
            const SizedBox(
              height: 48.0,
            ),
            PaddedLongButton(
              color: Colors.lightBlueAccent,
              label: 'Log In',
              onPressed: () { Navigator.pushNamed(context, LoginScreen.id); }
            ),
            PaddedLongButton(
              onPressed: () {
                    Navigator.pushNamed(context, RegistrationScreen.id);
                  },
              color: Colors.blueAccent,
              label: 'Register'
            )
          ],
        ),
      ),
    );
  }
}
