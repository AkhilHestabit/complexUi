import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          color: Colors.green,

        ),
        Container(
          color: Colors.blue,
           height: 300,
          width: 300,
        ),
        Container(
          color: Colors.deepOrange,
          height: 150,
          width: 150,
        )
      ],
    
    );

  }
}
