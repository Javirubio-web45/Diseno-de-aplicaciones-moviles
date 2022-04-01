import 'package:flutter/material.dart';

class ContainerPlace extends StatelessWidget{
  const ContainerPlace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){

    String longDescription= "Esto es un texto de descripcion que se encuntra en un contenedor como parte de una columna. Debajo se apilan 3 contenedores usando el widget 'Stack'";

    final row_text = Container(
      margin: const EdgeInsets.only(
        top: 320.0,
        left: 20.0,
        right: 20.0,
      ),
      child: const Text("Texto en row", textAlign: TextAlign.center)
    );

    final description = Container(
      margin: const EdgeInsets.only(
            top: 20.0,
            bottom: 20.0,
            left: 20.0,
            right: 20.0,
      ),
      child: Text(
        longDescription, 
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontWeight: FontWeight.bold
        ),
      ),
    );
  
    final boxes = Stack(
      children: <Widget>[
        Container(
          width: 100,
          height: 100,
          color: Colors.red,
        ),
        Container(
          width: 90,
          height: 90,
          color: Colors.green,
        ),
        Container(
          width: 80,
          height: 80,
          color: Colors.blue,
        ),
      ],
    );

    final container = Row(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0,
          ),
          child: const Text(
            "Texto en contenedor",
            style: TextStyle(
              fontWeight: FontWeight.w900
            ),
          ),
        ),
        Row(
          children: <Widget>[
            row_text,
            row_text,
          ]
        ),
      ],
    );
      
      
    return Column(
      children: <Widget>[
        container,
        description,
        boxes
      ]
    );
  }
}