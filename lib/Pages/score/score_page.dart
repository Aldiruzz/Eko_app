import 'package:flutter/material.dart';

import 'package:eco_app/Pages/home&tabs/home_page.dart';
import 'package:eco_app/controllers/question_controller.dart';
import 'package:eco_app/components/quizBackImage.dart';
import 'package:get/get.dart';

class ScorePage extends StatelessWidget {
  const ScorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          QuizBackgroundImage(),
          Column(
            children: [
              Spacer(flex: 3),
              Text('Puntaje',
                  style: Theme.of(context)
                      .textTheme
                      .headline3
                      ?.copyWith(color: Colors.white)),
              SizedBox(height: 20.0),
              Text(
                  '${_controller.numOfCorrectAns * 10}/${_controller.questions.length * 10}',
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      ?.copyWith(color: Colors.white)),
              Spacer(flex: 3),
              TextButton(
                  onPressed: () => _volver(_controller),
                  child: Text('Volver a Inicio',
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          ?.copyWith(color: Colors.white))),
              Spacer()
            ],
          ),
        ],
      ),
    );
  }

  void _volver(QuestionController _controller) {
    _controller.isClosed;
    Get.to(HomePage());
  }
}
