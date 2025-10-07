import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosenAnswers, required this.onRestart});
  final List<String> chosenAnswers;
  final void Function() onRestart;


  List<Map<String,Object>> getSummaryData(){
    List<Map<String,Object>> summary = [];

    for(var i =0; i<chosenAnswers.length; i++)
    {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_answer': questions[i].answers[0],
          'user_answer': chosenAnswers[i],
        });
    }
    return summary;

  }
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You answere out of Y questions correctly!'),
            const SizedBox(
              height: 30,
            ),
            const Text('List of Answers and Question'),
            //'Loop' through chosenAnswers and do something with it
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: onRestart,
              child: const Text('Restart Quiz!'),
            ),
          ],
        ),
      ),
    );
  }
}