import 'package:eco_app/controllers/question_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 35,
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xFFC1C1C1), width: 2),
          borderRadius: BorderRadius.circular(50),
        ),
        child: GetBuilder<QuestionController>(
            init: QuestionController(),
            builder: (controller) {
              return Stack(
                children: [
                  LayoutBuilder(
                      builder: (context, constraints) => Container(
                            width: constraints.maxWidth *
                                controller.animation.value,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                    Color.fromRGBO(47, 93, 98, 1),
                                    Color.fromRGBO(94, 136, 126, 1)
                                  ],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight),
                              borderRadius: BorderRadius.circular(50),
                            ),
                          )),
                  Positioned.fill(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                            '${(controller.animation.value * 60).round()} sec'),
                        Icon(Icons.access_time)
                      ],
                    ),
                  ))
                ],
              );
            }));
  }
}
