import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/question_summary/question_identifiers.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.item, {super.key});

  final Map<String, Object> item;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer = item['user_answer'] == item['correct_answer'];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifiers(
          isCorrectAnswer: isCorrectAnswer,
          questionIndex: item['question_index'] as int,
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item['question'] as String,
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                item['user_answer'] as String,
                style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 136, 133, 133),
                ),
              ),
              Text(
                item['correct_answer'] as String,
                style: GoogleFonts.lato(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
