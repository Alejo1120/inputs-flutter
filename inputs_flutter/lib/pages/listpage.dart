import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  ListPage({Key? key}) : super(key: key);

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  final List<Preguntas> _listpregunta = [
    //preguntas y respuestas

    Preguntas(
      "En que continente queda Colombia",
      ["Africa", "Asia", "America del Norte", "America del sur"],
    ),

    Preguntas(
      "Villavicencio en que departamento queda", //pregunta
      ["Cundinamarca", "Antioquia", "Meta", " Casanare"], //respuesta
    ),
  ];

  void respuestas(int preguntaindex, int respindex) {
    final pre = _listpregunta[preguntaindex];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'QUIZ',
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: List.generate(
            _listpregunta.length,
            (preguntaindex) {
              final Preguntas pregunta = _listpregunta[preguntaindex];
              return Container(
                margin:
                    EdgeInsets.only(bottom: 20, left: 20, right: 10, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(child: Text(pregunta.label)),
                    SizedBox(
                      height: 10, //espacio entre preguntas, abajo rtas
                    ),
                    Wrap(
                      //aparezca las respuestas bien distribuidas con wrap
                      children: List.generate(pregunta.op.length, (respindex) {
                        final option = pregunta.op[respindex];
                        return Row(
                          children: [
                            Checkbox(
                              value: false,
                              onChanged: (value) {},
                            ),
                            Text(option),
                          ],
                        );
                      }),
                      // children: pregunta.op   otra forma de hacerlo
                      //     .map((rtas) => Row(
                      //           /// mainAxisSize: MainAxisSize.min,//tamaño rtas
                      //           children: [
                      //             Checkbox(
                      //               value: false,
                      //               onChanged: (value) {},
                      //             ),
                      //             Text(rtas), //MOSTRAR respuestas
                      //           ],
                      //         ))
                      //     .toList(),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class Preguntas {
  final String label;
  final List<String> op;
  final List<String> rta;

  Preguntas(
    //constructor de variables
    @required this.label,
    @required this.op, {
    this.rta: const [],
  });

  Preguntas copywhith(List<String> rta) {
    return Preguntas(label, op, rta: this.rta);
  }
}
