import 'package:flutter/material.dart';

class TarjetaCMedioAmbiente extends StatelessWidget {
  const TarjetaCMedioAmbiente({
    Key? key,
    required this.screenH,
    required this.screenW,
  }) : super(key: key);

  final double screenH;
  final double screenW;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: screenH * 0.05, horizontal: screenW * 0.05),
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: screenW * 0.05, vertical: screenH * 0.02),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
        width: double.infinity,
        child: Column(
          children: [
            Text(
              'Cuidado del medio ambiente',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0),
            ),
            SizedBox(height: 15.0),
            Text(
              'El cuidado del medio ambiente no ha de ser ' +
                  'únicamente una preocupación de las empresas,' +
                  ' también son los hogares los que han de poner' +
                  ' su granito de arena y ponerse cuanto antes' +
                  ' manos a la obra para colaborar en el cuidado ' +
                  'de nuestro entorno.',
              textAlign: TextAlign.justify,
              style: TextStyle(color: Colors.black, fontSize: 16.0),
            ),
            SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () => _problemas(context, screenH),
                  child: Container(
                      padding: EdgeInsets.symmetric(horizontal: screenW * 0.01),
                      width: screenW * 0.18,
                      height: screenH * 0.18,
                      decoration: BoxDecoration(
                          color: Colors.lightGreen,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Center(
                          child: Text(
                        'Problemas del medio ambiente',
                        textAlign: TextAlign.center,
                      ))),
                ),
                InkWell(
                  onTap: () => _acciones(context, screenH),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: screenW * 0.01),
                    child: Center(
                      child: Text(
                        'Acciones para el cuidado del medio ambiente',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    width: screenW * 0.18,
                    height: screenH * 0.18,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  _problemas(BuildContext context, double screenH) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            content: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Problemas del medio ambiente',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'Las causas que amenazan a nuestro planeta con un cambio radical en el ecosistema, se deben a lo siguiente elementos:\n\n' +
                        '    Contaminación del agua dulce y de los mares:\nProvocada por la actividad industrial y las ciudades.\n\n' +
                        '    Contaminación del aire:\nProcedente de la industria y los automóviles. La generación de gases de efecto invernadero representa un peligro de calentamiento global que podría cambiar el clima a nivel planetario.\n\n' +
                        '    Destrucción de la capa de ozono:\nResultado de la emisión de ciertos gases industriales, la pérdida de esta capa atmosférica dejaría a la Tierra sin protección contra las radiaciones solares.\n\n' +
                        '    Destrucción de los bosques:\nLa pérdida de la vegetación natural, unida al calentamiento global, permite un rápido avance del desierto.\n\n' +
                        '    Residuos urbanos:\nLa acumulación de basura es un grave problema de las ciudades modernas.\n\n' +
                        '    Eliminación de la biodiversidad:\nLa pérdida de variedad biológica empobrece el ecosistema global y priva a la humanidad de importantes recursos.',
                    textAlign: TextAlign.justify,
                  )
                ],
              ),
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text('Cerrar'))
            ],
          );
        });
  }

  _acciones(BuildContext context, double screenH) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            content: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Acciones para el cuidado del medio ambiente',
                    style: Theme.of(context).textTheme.headline4,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20.0),
                  Text('Las siguientes son acciones que recomendamos evitar para ayudar con el cuidado del medio ambiente:\n' +
                      '    Consumir agua embotellada\n' +
                      '    Usar menos el aire acondicionado\n' +
                      '    Eliminar basura incorrectamente\n' +
                      '    Usar el automóvil para todo\n' +
                      '    Dejar conectados los aparatos elétricos' +
                      '\n\nPor el contrario, las siguientes son acciones que recomendamos seguir para ayudar con el cuidado del medio ambiente:\n' +
                      '    Crear un espacio verde en casa\n' +
                      '    Separar la basura\n' +
                      '    Consumir agua de garrafón\n' +
                      '    Considerar energías renovables en casa\n' +
                      '    Separar y reciclar la basura\n' +
                      '    Usar el transporte público')
                ],
              ),
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
