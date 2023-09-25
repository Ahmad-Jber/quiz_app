import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizText extends StatelessWidget {
  const QuizText({super.key, required this.title, required this.size});
  final String title;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: GoogleFonts.martianMono(
        color: Colors.white,
        fontSize: size,
      ),
    );
  }
}
