import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){

    final photo = Container(
      margin: const EdgeInsets.only(
        top: 20.0,
        left: 20.0
      ),
      width: 420.0,
      height: 360.0,
      child: Image.asset(
        '../images/backgroundimage.jpg',
        fit: BoxFit.cover,
      ),
    );

    final icons = Row(
      children: [
        Icon(
              Icons.star,
              color: Colors.yellow[500],
            ),
        Icon(
              Icons.star,
              color: Colors.yellow[500],
            ),
        Icon(
              Icons.star,
              color: Colors.yellow[500],
            ),
        Icon(
              Icons.star,
              color: Colors.yellow[500],
            ),
        Icon(
              Icons.star,
              color: Colors.yellow[500],
            ),
      ],
    );

    final container = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(
            top: 100.0,
            left: 20.0,
            right: 20.0,
          ),
        ),
        Row(
          children: <Widget>[
            Text(
              "Hello World",
              style: TextStyle(
                fontWeight: FontWeight.w900
              ),
            ),
            icons,
          ]
        ),
      ],
    );
      
      
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        photo,
        container,
      ],
    );
  }
}