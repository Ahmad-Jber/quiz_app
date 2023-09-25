import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home(this.switchScreen, {super.key});

  final void Function() switchScreen;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: kIsWeb ||
                    Platform.isWindows ||
                    Platform.isMacOS ||
                    Platform.isLinux
                ? 400
                : 300,
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            "Learn Flutter!",
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          OutlinedButton.icon(
            onPressed: switchScreen,
            icon: const Icon(
              Icons.arrow_right,
              size: 70,
            ),
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            label: const Text(
              "Start Quiz",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
