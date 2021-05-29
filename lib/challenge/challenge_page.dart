import 'package:DevQuiz/challenge/widgets/question_indicator/question_indicator_widget.dart';
import 'package:DevQuiz/challenge/widgets/quiz/quiz_widget.dart';
import 'package:flutter/material.dart';

class ChallengaPage extends StatefulWidget {
  ChallengaPage({Key? key}) : super(key: key);
 
  @override
  _ChallengaPageState createState() => _ChallengaPageState();
}

class _ChallengaPageState extends State<ChallengaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: SafeArea(
          top: true,
          child: QuestionIndicatorWidget()),
      ),
      body: QuizWidget(title: "O que o Flutter faz em sua totalidade?",),
    );
  }
}