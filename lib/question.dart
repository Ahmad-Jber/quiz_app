import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/app_widgets/answer_button.dart';
import 'package:quiz_app/app_widgets/quiz_text_widgets.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/models/QuizQuestion.dart';

class Question extends StatefulWidget {
  const Question({super.key, required this.onSelectedAnswer});

  final Function(String) onSelectedAnswer;

  @override
  State<Question> createState() => _QuestionsState();
}

class _QuestionsState extends State<Question> {
  int currentQuestionIndex = 0;
  void answerQuestion(String answer) {
    widget.onSelectedAnswer(answer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final QuizQuestion currentQuestion = questions[currentQuestionIndex];
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          QuizText(
            title: currentQuestion.question,
            size: kIsWeb ||
                    Platform.isWindows ||
                    Platform.isMacOS ||
                    Platform.isLinux
                ? 30
                : 20,
          ),
          ...currentQuestion.getShuffledAnswers().map(
                (e) => AnswerButton(
                  onPressed: () => answerQuestion(e),
                  name: e,
                ),
              ),
        ],
      ),
    );
  }
}

/*

...questions.map(
(e) => Column(
crossAxisAlignment: CrossAxisAlignment.stretch,
children: [
const SizedBox(
height: 30,
),
Text(
e.question,
textAlign: TextAlign.center,
),
...e.getShuffledAnswers().map(
(a) => AnswerButton(
onPressed: () {},
name: a,
),
),
*/
