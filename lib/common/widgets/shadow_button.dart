import 'package:flutter/material.dart';
import 'package:vred/common/enums/cashback_enum.dart';

class ShadowButton extends StatelessWidget {
  const ShadowButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
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
          // borderRadius: BorderRadius.circular(30),
          boxShadow: const [
            BoxShadow(
              blurStyle: BlurStyle.normal,
              color: Colors.white30,
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
          ],
        ),
        child: RadiantGradientMask(child: Icon(Icons.card_giftcard_rounded, size: 30, color: Colors.white)),
      ),
    );
  }
}

// shader mask with radial gradient with unique premium colors
class RadiantGradientMask extends StatelessWidget {
  RadiantGradientMask({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => const RadialGradient(
        center: Alignment.center,
        radius: 0.3,
        colors: [Color.fromARGB(255, 207, 172, 155), Color.fromARGB(255, 126, 81, 44)],
        tileMode: TileMode.mirror,
      ).createShader(bounds),
      child: child,
    );
  }
}

class BlueShadowButton extends StatelessWidget {
  const BlueShadowButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 70,
        width: 250,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          gradient: const LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [
            Color.fromARGB(255, 68, 109, 190),
            Color.fromARGB(255, 55, 91, 168),
            Color.fromARGB(255, 52, 87, 170),
            Color.fromARGB(255, 44, 80, 156)
          ], stops: [
            0.1,
            0.4,
            0.6,
            0.9
          ]),
          borderRadius: BorderRadius.circular(35),
          border: Border.all(color: Colors.black, width: 3),
          boxShadow: const [
            BoxShadow(
              blurStyle: BlurStyle.normal,
              color: Colors.white30,
              spreadRadius: 2,
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
          ],
        ),
        child: const Center(
          child: Text(
            'Pay Now',
            style: TextStyle(
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

// class BankCard extends StatelessWidget {
//   const BankCard({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Card();
//   }
// }
