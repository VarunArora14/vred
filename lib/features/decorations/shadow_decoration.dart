import 'package:flutter/material.dart';

BoxDecoration shadowButtonDecoration(BoxShape shape, BorderRadiusGeometry borderRadius) {
  return BoxDecoration(
    shape: shape,
    gradient: const LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [
      Color.fromARGB(255, 56, 54, 54),
      Color.fromARGB(255, 36, 35, 35),
      Color.fromARGB(255, 27, 26, 26),
      Color.fromARGB(255, 10, 10, 10)
    ], stops: [
      0.1,
      0.3,
      0.7,
      0.9
    ]),
    color: Colors.grey[900],
    borderRadius: (shape == BoxShape.rectangle) ? borderRadius : null,
    boxShadow: const [
      BoxShadow(
        blurStyle: BlurStyle.normal,
        color: Colors.white30,
        spreadRadius: 0.5,
        blurRadius: 10,
        offset: Offset(-4, -4), // changes position of shadow
      ),
      BoxShadow(
        blurStyle: BlurStyle.normal,
        color: Colors.black87,
        spreadRadius: 1,
        blurRadius: 15,
        offset: Offset(4, 4), // changes position of shadow
      ),
    ],
  );
}
