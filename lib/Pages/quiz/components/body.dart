import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:eco_app/components/quizBackImage.dart';
import 'package:eco_app/controllers/question_controller.dart';
import 'progress_bar.dart';
import 'questionCard.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionController _questionController = Get.put(QuestionController());
    return Stack(
      children: [
        QuizBackgroundImage(),
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: ProgressBar(),
              ),
              SizedBox(
                height: 15.0,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Obx(
                    () => Text.rich(
                      TextSpan(
                        text:
                            'Pregunta ${_questionController.questionNumber.value}',
                        style: Theme.of(context)
                            .textTheme
                            .headline4
                            ?.copyWith(color: Color.fromRGBO(167, 196, 188, 1)),
                        children: [
                          TextSpan(
                            text: '/${_questionController.questions.length}',
                            style: Theme.of(context)
                                .textTheme
                                .headline5
                                ?.copyWith(
                                    color: Color.fromRGBO(167, 196, 188, 1)),
                          ),
                        ],
                      ),
                    ),
                  )),
              Divider(
                thickness: 1.5,
              ),
              SizedBox(
                height: 15.0,
              ),
              Expanded(
                  child: PageView.builder(
                //blocks swipe no next question
                onPageChanged: _questionController.updateQnNumber,
                physics: NeverScrollableScrollPhysics(),
                controller: _questionController.pageController,
                itemCount: _questionController.questions.length,
                itemBuilder: (context, index) => QuestionCard(
                  question: _questionController.questions[index],
                ),
              )),
            ],
          ),
        ),
      ],
    );
  }
}
