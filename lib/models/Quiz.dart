class Quiz {
  final int id, res;
  final String question;
  final List<String> options;

  Quiz(
      {required this.id,
      required this.question,
      required this.res,
      required this.options});
}

const List quiz_data = [
  {
    "id": 1,
    "question": "¿Cuáles son las tres R?",
    "options": [
      'Reutilizar, Revolver y Reinventar',
      'Reulitizar, Reducir y Reciclar',
      'Reulitizar, Revolver y Reciclar',
      'Reulitizar, Reinventar y Reciclar'
    ],
    "res_index": 1,
  },
  {
    "id": 2,
    "question": "¿Qué es Reciclar?",
    "options": [
      'Mezclar la basura',
      'Separarla la basura',
      'Usar los materiales para otras cosas',
      'Volver a usar la basura'
    ],
    "res_index": 2,
  },
];
