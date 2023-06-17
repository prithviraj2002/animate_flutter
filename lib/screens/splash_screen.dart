import 'package:animate_flutter/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
        child: Animate(
          effects: const [
            FadeEffect(
              duration: Duration(seconds: 5),
            )
          ],
          onComplete: (controller) {
            if(controller.isCompleted){
              Navigator.of(context).popAndPushNamed(HomeScreen.routeName);
            }
          },
          child: const Text(
            'Splash Screen',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30
            ),
          ),
        ),
      ),
    );
  }
}


