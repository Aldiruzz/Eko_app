import 'package:flutter/material.dart';

import 'package:eco_app/models/texto_image.dart';
import 'package:carousel_slider/carousel_slider.dart';

class AmbienteCarousel extends StatelessWidget {
  const AmbienteCarousel({
    Key? key,
    required this.screenH,
  }) : super(key: key);

  final double screenH;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double screenW = size.width;
    return Container(
        child: CarouselSlider(
      options: CarouselOptions(
        aspectRatio: screenW > 600 ? 4.2 : 2.8,
        enlargeCenterPage: false,
        enableInfiniteScroll: false,
        initialPage: 0,
        autoPlay: false,
      ),
      items: imgList
          .map((item) => Builder(
                builder: (context) {
                  return Container(
                    child: Container(
                      margin: EdgeInsets.all(5.0),
                      child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          child: GestureDetector(
                            onTap: () => _mostrar(context, item.text, item.img,
                                item.subtext, screenH),
                            child: Stack(
                              children: <Widget>[
                                Image.network(item.img,
                                    fit: BoxFit.cover, width: 1000.0),
                                Positioned(
                                  bottom: 0.0,
                                  left: 0.0,
                                  right: 0.0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Color.fromARGB(200, 0, 0, 0),
                                          Color.fromARGB(0, 0, 0, 0)
                                        ],
                                        begin: Alignment.bottomCenter,
                                        end: Alignment.topCenter,
                                      ),
                                    ),
                                    padding: EdgeInsets.symmetric(
                                        vertical: 10.0, horizontal: 20.0),
                                    child: Text(
                                      '${item.text.toString()}',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ),
                  );
                },
              ))
          .toList(),
    ));
  }

  _mostrar(BuildContext context, String text, String img, String subtext,
      double screenH) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '$text',
                  style: Theme.of(context).textTheme.headline3,
                ),
                SizedBox(height: 20.0),
                Text('$subtext')
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text('Cerrar'))
            ],
          );
        });
  }
}
