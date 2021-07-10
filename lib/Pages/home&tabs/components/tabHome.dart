import 'package:eco_app/components/tabsBackImage.dart';
import 'package:flutter/material.dart';

class TabHome extends StatelessWidget {
  const TabHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double screenW = size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        TabsBackImage(screenHeight: screenHeight),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SizedBox(height: 0.0, width: double.infinity),
            Container(
                margin: EdgeInsets.symmetric(
                  vertical: screenHeight * 0.01,
                  horizontal: screenW * 0.05,
                ),
                padding: EdgeInsets.symmetric(
                    horizontal: screenW * 0.03, vertical: screenHeight * 0.03),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromRGBO(19, 78, 94, 1),
                      Color.fromRGBO(113, 178, 128, 1)
                    ],
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'El medio ambiente',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                    SizedBox(height: 15.0),
                    size.width > 600
                        ? Text(
                            'El medio ambiente es un sistema formado por elementos' +
                                'naturales y artificiales que están interrelacionados y ' +
                                'que son modificados por la acción humana. Se trata del ' +
                                'entorno que condiciona la forma de vida de la sociedad y ' +
                                'que incluye valores naturales, sociales y culturales que' +
                                ' existen en un lugar y momento determinado.',
                            style: TextStyle(
                                fontSize: 17.0,
                                color: Color.fromRGBO(109, 213, 250, 1),
                                fontWeight: FontWeight.w400))
                        : Text(
                            'El medio ambiente es un sistema formado por elementos' +
                                'naturales y artificiales que están interrelacionados y ' +
                                'que son modificados por la acción humana.',
                            style: TextStyle(
                              fontSize: 17.0,
                              color: Color.fromRGBO(109, 213, 250, 1),
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.justify,
                          )
                  ],
                )),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: size.width * 0.05),
                  child: Text(
                    'Las tres Re',
                    style: const TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
                const SizedBox(height: 15.0),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          InkWell(
                            onTap: () =>
                                _mostrarInfoReclicado(context, screenHeight),
                            child: Container(
                              height: screenHeight * 0.12,
                              width: screenHeight * 0.12,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      (screenHeight * 0.12) / 2),
                                  image: DecorationImage(
                                    image: AssetImage('images/recicla1.jpg'),
                                    fit: BoxFit.cover,
                                  )),
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            'Recicla',
                            style: const TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          InkWell(
                            onTap: () =>
                                _mostrarInfoReutilizar(context, screenHeight),
                            child: Container(
                              height: screenHeight * 0.12,
                              width: screenHeight * 0.12,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      (screenHeight * 0.12) / 2),
                                  image: DecorationImage(
                                    image: AssetImage('images/reutilizar.jpg'),
                                    fit: BoxFit.cover,
                                  )),
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            'Reutiliza',
                            style: const TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          InkWell(
                            onTap: () =>
                                _mostrarInfoReducir(context, screenHeight),
                            child: Container(
                              height: screenHeight * 0.12,
                              width: screenHeight * 0.12,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      (screenHeight * 0.12) / 2),
                                  image: DecorationImage(
                                    image: AssetImage('images/reduce.jpg'),
                                    fit: BoxFit.cover,
                                  )),
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            'Reduce',
                            style: const TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                            textAlign: TextAlign.center,
                          )
                        ],
                      )
                    ])
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(
                vertical: screenHeight * 0.01,
                horizontal: screenW * 0.05,
              ),
              padding: EdgeInsets.symmetric(
                  horizontal: screenW * 0.03, vertical: screenHeight * 0.03),
              height: screenHeight * 0.2,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(166, 169, 113, 1),
                    Color.fromRGBO(237, 217, 137, 1)
                  ],
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Image.asset('images/personasRe.png'),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Ser sustentable!',
                        style: const TextStyle(
                          color: Color.fromRGBO(80, 89, 03, 1),
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      Text(
                        'Tu también puedes ser parte del cambio.',
                        style: const TextStyle(
                          color: Color.fromRGBO(90, 99, 13, 1),
                          fontSize: 16.0,
                        ),
                        maxLines: 2,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  void _mostrarInfoReclicado(BuildContext context, double screenHeight) {
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
                  'Recliclar',
                  style: Theme.of(context).textTheme.headline3,
                ),
                Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/recicla1.jpg'))),
                    height: screenHeight * 0.3),
                Text('La ultima de las tareas es la de reciclar, que consiste en el proceso de someter ' +
                    'los materiales a un proceso en el cual se puedan volver a utilizar, reduciendo de ' +
                    'forma verdaderamente significativa la utilización de nuevos materiales, y con ello,' +
                    ' mas basura en un futuro.\nLas sociedades del mundo siempre han producido residuos,' +
                    ' pero es ahora, en la sociedad de consumo, cuando el volumen de las basuras ha ' +
                    'crecido de forma desorbitada. Además se ha incrementado su toxicidad hasta ' +
                    'convertirse en un gravísimo problema. Estamos inmersos en la cultura del usar y tirar, ' +
                    'y en la basura de cada día están los recursos que dentro de poco echaremos en falta.')
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

  void _mostrarInfoReducir(BuildContext context, double screenHeight) {
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
                  'Reducir',
                  style: Theme.of(context).textTheme.headline3,
                ),
                Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/reduce.jpg'))),
                    height: screenHeight * 0.3),
                Text('Cuando hablamos de reducir lo que estamos diciendo es que ' +
                    'se debe tratar de reducir o simplificar el consumo de los productos ' +
                    'directos, o sea, todo aquello que se compra y se consume, ya que ' +
                    'esto tiene una relación directa con los desperdicios, a la vez que ' +
                    'también la tiene con nuestro bolsillo. Por ejemplo, en vez de ' +
                    'comprar 6 botellas pequeñas de una bebida, se puede conseguir ' +
                    'una o dos grandes, teniendo el mismo producto pero menos envases sobre los que preocuparse.')
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

  void _mostrarInfoReutilizar(BuildContext context, double screenHeight) {
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
                  'Reutilizar',
                  style: Theme.of(context).textTheme.headline3,
                ),
                Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/reutilizar.jpg'))),
                    height: screenHeight * 0.3),
                Text('Al decir reutilizar, nos estamos refiriendo a poder volver a ' +
                    'utilizar las cosas y darles la mayor utilidad posible antes de que ' +
                    'llegue la hora de deshacernos de ellas, dado que al disminuir el ' +
                    'volumen de la basura. \nEsta tarea suele ser la que menos atención ' +
                    'recibe y es una de las mas importantes, que también ayuda mucho la economía en casa.')
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
