import 'package:flutter/material.dart';

import 'package:eco_app/Pages/quiz/quizes.dart';
import 'package:eco_app/components/quizBackImage.dart';
import 'package:get/get.dart';

class TabPreguntas extends StatelessWidget {
  const TabPreguntas({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        QuizBackgroundImage(),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(flex: 2),
                Text('Comencemos con el Quiz,',
                    style: Theme.of(context).textTheme.headline5?.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold)),
                Text(
                  'Ingresa tu nombre abajo:',
                  style: Theme.of(context).textTheme.headline6?.copyWith(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
                Spacer(),
                TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.black38,
                    hintText: "Ingresa un nombre",
                    hintStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    ),
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: () => Get.to(PlayQuiz()),
                  child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(20.0 * 0.75),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color.fromRGBO(93, 139, 126, 1)),
                      child: Text(
                        'Iniciar Quiz',
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.w600),
                      )),
                ),
                Spacer(),
                Spacer(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
