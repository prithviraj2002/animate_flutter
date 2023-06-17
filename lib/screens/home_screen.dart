import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home-screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        elevation: 3,
        title: const Text('Animation in Flutter',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
      ),
      body: Center(
          child: const Text(
              'Animated Widget',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
              )
          ).animate()
              .shake(duration: const Duration(seconds: 1))
              .then()
              .tint(color: Colors.orange, duration: const Duration(seconds: 1))
      )
    );
  }
}


