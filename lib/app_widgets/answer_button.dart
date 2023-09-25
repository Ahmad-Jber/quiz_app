import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/app_widgets/quiz_text_widgets.dart';

class AnswerButton extends StatelessWidget {
  final void Function() onPressed;
  final String name;
  const AnswerButton({
    required this.onPressed,
    required this.name,
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          kIsWeb || Platform.isWindows || Platform.isMacOS || Platform.isLinux
              ? const EdgeInsets.fromLTRB(500, 20, 500, 0)
              : const EdgeInsets.fromLTRB(10, 5, 10, 0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(
              vertical: kIsWeb ||
                      Platform.isWindows ||
                      Platform.isMacOS ||
                      Platform.isLinux
                  ? 50
                  : 20,
              horizontal: 50),
          backgroundColor: Colors.greenAccent[900],
          foregroundColor: Colors.white,
        ),
        onPressed: onPressed,
        child: QuizText(
          title: name,
          size: kIsWeb ||
                  Platform.isWindows ||
                  Platform.isMacOS ||
                  Platform.isLinux
              ? 25
              : 15,
        ),
      ),
    );
  }
}
