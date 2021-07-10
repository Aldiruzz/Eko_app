import 'package:eco_app/Pages/score/score_page.dart';
import 'package:eco_app/models/Quiz.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class QuestionController extends GetxController
    with SingleGetTickerProviderMixin {
  late AnimationController _animationController;
  late Animation _animation;
  Animation get animation => this._animation;

  late PageController _pageController;
  PageController get pageController => this._pageController;

  List<Quiz> _questions = quiz_data
      .map(
        (question) => Quiz(
          id: question['id'],
          options: question['options'],
          question: question['question'],
          res: question['res_index'],
        ),
      )
      .toList();

  List<Quiz> get questions => this._questions;

  bool _isAnswered = false;
  bool get isAnswered => this._isAnswered;

  late int _correctAns = 0;
  int get correctAns => this._correctAns;

  late int _selectedAns = 0;
  int get selectedAns => this._selectedAns;

  RxInt _questionNumber = 1.obs;
  RxInt get questionNumber => this._questionNumber;

  late int _numOfCorrectAns = 0;
  int get numOfCorrectAns => this._numOfCorrectAns;

  @override
  void onInit() {
    _animationController =
        AnimationController(duration: Duration(seconds: 30), vsync: this);
    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController)
      ..addListener(() {
        update();
      });

    //animation start
    //once timer runsout, goto next qn
    _animationController.forward().whenComplete(nextQuestion);
    _pageController = PageController();
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
    _animationController.dispose();
    _pageController.dispose();
    _numOfCorrectAns = 0;
  }

  void checkAns(Quiz question, int selectedIndex) {
    _isAnswered = true; //when user presses an option it runs method
    _correctAns = question.res;
    _selectedAns = selectedAns;

    if (_correctAns == _selectedAns) _numOfCorrectAns++;
    // number of correct questions answered
    _animationController.stop(); //stops counter
    update();

    //next question after answer selection
    Future.delayed(Duration(seconds: 1), () {
      nextQuestion();
    });
  }

  void nextQuestion() {
    if (_questionNumber.value != _questions.length) {
      _isAnswered = false;
      _pageController.nextPage(
          duration: Duration(milliseconds: 250), curve: Curves.ease);

      //resets the counter
      _animationController.reset();
      //starts countdown again
      //once timer runsout, goto next qn
      _animationController.forward().whenComplete(nextQuestion);
    } else {
      Get.to(ScorePage());
    }
  }

  void updateQnNumber(int index) {
    _questionNumber.value = index + 1;
  }
}
