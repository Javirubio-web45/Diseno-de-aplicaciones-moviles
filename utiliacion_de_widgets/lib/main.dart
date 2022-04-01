import 'package:flutter/material.dart';
import 'container_place.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("3.4. Utilización de widgets"),
        ),
        body: const ContainerPlace(),
      ),
    );
  }
}


