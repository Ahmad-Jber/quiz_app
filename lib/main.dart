import 'package:flutter/material.dart';
import 'package:quiz_app/home.dart';

void main() {
  runApp(
    const Application(),
  );
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.amber,
                Colors.blueAccent,
              ],
            ),
          ),
          child: const Home(),
        ),
      ),
    );
  }
}
