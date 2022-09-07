import 'package:flutter/material.dart' hide BoxShadow, BoxDecoration;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
// use above plugin for inset property and make sure the files that call it have the same otherwise inner shadow not possible
// credit_card.dart also has to have this file imported with hide BoxShadow, BoxDecoration

// show shadow outside of button as black & white
List<BoxShadow>? commonOuterBoxShadow() {
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

// to show the shadow inside the button b/w
List<BoxShadow>? commonInnerBoxShadow() {
  return const [
    BoxShadow(
      blurStyle: BlurStyle.normal,
      offset: Offset(-4, -4),
      spreadRadius: 0.2,
      blurRadius: 5,
      color: Colors.white38,
      inset: true,
    ),
    BoxShadow(
      offset: Offset(4, 4),
      blurRadius: 4,
      spreadRadius: 0.4,
      color: Colors.black54,
      inset: true,
    ),
  ];
}
