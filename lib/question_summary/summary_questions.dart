import 'package:flutter/material.dart';
import 'package:quiz_app/question_summary/summary_item.dart';
// import 'package:google_fonts/google_fonts.dart';

class SummaryQuestions extends StatelessWidget {
  const SummaryQuestions(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return SummaryItem(data);
            },
          ).toList(),
        ),
      ),
    );
  }
}
