import 'package:flutter/material.dart';

List<BoxShadow>? commonBoxShadow() {
  return const [
    BoxShadow(
      blurStyle: BlurStyle.normal,
      color: Colors.white38,
      spreadRadius: 1,
      blurRadius: 15,
      offset: Offset(-4, -4), // changes position of shadow
    ),
    BoxShadow(
      blurStyle: BlurStyle.normal,
      color: Colors.black87,
      spreadRadius: 2,
      blurRadius: 15,
      offset: Offset(4, 4), // changes position of shadow
    ),
  ];
}
