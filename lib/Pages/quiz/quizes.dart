import 'package:eco_app/controllers/question_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'components/body.dart';

class PlayQuiz extends StatefulWidget {
  @override
  _PlayQuizState createState() => _PlayQuizState();
}

class _PlayQuizState extends State<PlayQuiz> {
  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            TextButton(
              onPressed: _controller.nextQuestion,
              child: Text(
                'Saltar',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
          //leading: IconButton(
          //icon: Icon(Icons.chevron_left_outlined),
          //onPressed: () {
          //Navigator.pop(context);
          //},
          //),
          title: Text('Quiz'),
          centerTitle: true,
        ),
        body: Body(),
      ),
    );
  }
}
