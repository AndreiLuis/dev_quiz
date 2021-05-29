import 'package:DevQuiz/core/app_images.dart';
import 'package:DevQuiz/home/home_state.dart';
import 'package:DevQuiz/shared/models/answer_model.dart';
import 'package:DevQuiz/shared/models/question_model.dart';
import 'package:DevQuiz/shared/models/quiz_model.dart';
import 'package:DevQuiz/shared/models/user_model.dart';

class HomeController {
  HomeState state = HomeState.empty;
  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() {
    user = UserModel(
      name: "Andrei Luís",
      photoUrl: "https://avatars.githubusercontent.com/u/11237852?v=4",
      score: 0,
    );
  }

  void getQuizzes() {
    quizzes = [
      QuizModel(
          title: "NLW 5 Flutter",
          imagem: AppImages.blocks,
          level: Level.facil,
          questions: [
            QuestionModel(title: "O que acha do flutter?", answers: [
              AnswerModel(title: "Não, acho ruim"),
              AnswerModel(title: "Interessante..."),
              AnswerModel(title: "Suave de usar"),
              AnswerModel(title: "Muito massa!", itsCorrect: true),
            ])
          ])
    ];
  }
}
