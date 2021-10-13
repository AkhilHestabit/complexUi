import 'package:flutter/material.dart';



class AnimationClass extends StatelessWidget {
  const AnimationClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:<Widget> [
        AnimatedContainer(
            width: 500,
            child: Image.asset('assets/star.png'),
            duration: Duration(seconds: 1)),
        RaisedButton(
          onPressed: () => (() {

          }),
          child: Icon(Icons.star),
        ),


      ],

    );

  }
}
