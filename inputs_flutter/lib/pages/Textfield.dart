import 'package:flutter/material.dart';

class Textfield extends StatefulWidget {
  const Textfield({Key? key}) : super(key: key);

  @override
  _TextfieldState createState() => _TextfieldState();
}

class _TextfieldState extends State<Textfield> {
  //guardar los datos que se ingresan en un input

  String _email = '', _password = ''; // _ variables privadas

  void _enviar() {
    print("email $_email");
    print("password $_password");
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        primaryColor: Colors.green, //color
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(' text field'),
        ),
        body: SafeArea(
          child: GestureDetector(
            //ajuste el text field
            onTap: () {
              FocusScope.of(context)
                  .unfocus(); //para minimizar el teclado dewl cel
            },
            child: Container(
              color: Colors.transparent,
              width: double.infinity,
              padding: EdgeInsets.all(35),
              child: Column(
                children: [
                  //1er campo de texto
                  TextField(
                    style: TextStyle(color: Colors.blue), //color del texto
                    decoration: InputDecoration(
                      labelText: "Email", //muetsre msj en el input
                      hintText:
                          "correo@domain.com", //texto de ayuda dentro del input
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.pink, //color del icono
                      ), // icono de email al principio
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 3, horizontal: 25),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(35),
                        ),
                      ), //InputBorder.none, // no se vean los bordes
                    ),
                    keyboardType:
                        TextInputType.emailAddress, // number teclado numerico
                    // autocorrect: false, //desactivar autocorrector
                    //readOnly: true, //solo campo para lectura
                    // obscureText: true, //para contraseña
                    //obscuringCharacter:"*", //aparezca lo que hay en el string
                    //maxLines: null, //maximo de lineas de texto
                    //keyboardAppearance: Brightness.dark, //teclado oscuro
                    textInputAction:
                        TextInputAction.send, //configura boton del teclado

                    onChanged: (String text) {
                      _email = text;

                      //lo que se agrege en el campo de texto
                      print(text);
                    },
                  ),

                  Padding(
                      padding: EdgeInsets.symmetric(
                    vertical: 15,
                  )),

                  //2do campo de texto
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Password", //se muestre mensaje en el input
                      suffixIcon: Icon(
                        Icons.lock,
                        color: Colors.black, //color icono
                      ), //icono al final
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 3, horizontal: 25),
                      // enabledBorder: OutlineInputBorder(
                      //   borderSide:
                      //       BorderSide(color: Colors.green), //color borde
                      // ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(35),
                        ),
                      ), //InputBorder.none no se vean los bordes
                    ),
                    keyboardType: TextInputType
                        .visiblePassword, // number teclado numerico
                    textInputAction: TextInputAction.send, //btn teclado
                    obscureText: true,

                    onChanged: (String text) {
                      _password = text;

                      //lo que se agrege en el campo de texto
                      print(text);
                    },
                  ),

                  SizedBox(
                    height: 25,
                  ),

                  SizedBox(
                    width: double.infinity,
                    child: FlatButton(
                      //tambien se puede floatingactionbutton
                      onPressed: this._enviar, //retorna a la funcion
                      child: Text(
                        'Enviar',
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.blue,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
