class TextoImagen {
  final String img, text, subtext;

  TextoImagen({required this.img, required this.text, required this.subtext});
}

final List<TextoImagen> imgList = [
  TextoImagen(
    img: 'assets/images/notasImg/organismos.jpg',
    text: 'Organismos',
    subtext:
        'Conjuntos de individuos de diferentes especies, tanto animales como vegetales, hacen lo propio hasta encontrar su espacio y establecer poblaciones.',
  ),
  TextoImagen(
    img: 'assets/images/notasImg/agua.jpg',
    text: 'Agua',
    subtext:
        'Tanto la presencia como la ausencia de este líquido vital, es algo que afecta de manera directa el equilibrio del medio ambiente, asimismo, corresponde a una sustancia clave para la subsistencia de los organismos.',
  ),
  TextoImagen(
    img: 'assets/images/notasImg/aire.jpg',
    text: 'Aire',
    subtext:
        'A partir de la composición química de este elemento, es que se pueden identificar estados de contaminación. Por otra parte, este puede llegar a influir en la calidad del oxígeno que participa en la respiración.',
  ),
  TextoImagen(
    img: 'assets/images/notasImg/temperatura.jpg',
    text: 'Temperatura',
    subtext:
        'Esta magnitud que hace referencia al calor que se mide por medio de un termómetro, puede comprometer bastante el ambiente, consiguiendo que el aire se pueda percibir frío o caliente. Puesto que algunos organismos únicamente sobreviven dentro de ciertos rangos de temperatura, esta muchas veces puede ser sinónimo de deterioro.',
  ),
  TextoImagen(
    img: 'assets/images/notasImg/acci-geo.jpg',
    text: 'Accidentes Geograficos',
    subtext:
        'Se trata de los elementos que constituyen el relieve de una zona, por ejemplo, los valles y montañas.',
  ),
  TextoImagen(
    img: 'assets/images/notasImg/organismosV.png',
    text: 'Organismos Vivos',
    subtext:
        'Estos son pieza fundamental del medio ambiente, pues forman la acción directa en las alteraciones o mantenimiento de los procesos ambientales.',
  )
];
