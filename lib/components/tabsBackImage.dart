import 'package:flutter/material.dart';

class TabsBackImage extends StatelessWidget {
  const TabsBackImage({
    Key? key,
    required this.screenHeight,
  }) : super(key: key);

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: screenHeight,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/bosque1.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black12, BlendMode.darken)),
        ),
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0));
  }
}
