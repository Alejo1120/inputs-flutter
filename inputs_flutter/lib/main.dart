import 'package:flutter/material.dart';
import 'package:inputs_flutter/pages/Textfield.dart';
import 'package:inputs_flutter/pages/listpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Inputs',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ListPage(),
      //Textfield(), //pagina de los inputs text y chekcbox
    );
  }
}
