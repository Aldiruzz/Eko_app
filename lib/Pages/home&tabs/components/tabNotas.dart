import 'package:flutter/material.dart';

import 'package:eco_app/components/tabsBackImage.dart';
import 'NotasComps/carouselAmbiente.dart';
import 'NotasComps/cMedioAmbienteCard.dart';

class TabNotas extends StatefulWidget {
  @override
  _TabNotasState createState() => _TabNotasState();
}

class _TabNotasState extends State<TabNotas> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double screenW = size.width;
    double screenH = size.height;
    return Stack(
      children: [
        TabsBackImage(screenHeight: screenH),
        SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: screenH * 0.03),
              child: Column(
                children: [
                  Text(
                    'Características del medio ambiente',
                    style: TextStyle(fontSize: 24.0),
                  ),
                  AmbienteCarousel(screenH: screenH),
                  TarjetaCMedioAmbiente(screenH: screenH, screenW: screenW),
                  InkWell(
                    onTap: () => _referencias(context, screenH),
                    child: Container(
                      height: screenH * 0.08,
                      width: screenW * 0.5,
                      decoration: BoxDecoration(
                          color: Colors.blue[700],
                          borderRadius: BorderRadius.circular(15.0)),
                      child: Center(
                          child: Text(
                        'Referencias',
                        style: TextStyle(fontSize: 20.0),
                      )),
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  _referencias(BuildContext context, double screenH) {
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
                  'Referencias',
                  style: Theme.of(context).textTheme.headline3,
                ),
                SizedBox(height: 20.0),
                Text('La informacion usada en la aplicacion no es propia, y se obtuvo de las siguientes fuentes:\n' +
                    'https://www.responsabilidadsocial.net/medio-ambiente-que-es-definicion-caracteristicas-cuidado-y-carteles/' +
                    '\nhttps://www.responsabilidadsocial.net/3r-la-regla-de-las-tres-erres-reducir-reciclar-y-reutilizar/')
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
