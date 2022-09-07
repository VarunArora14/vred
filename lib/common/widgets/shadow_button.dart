import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vred/constants/colors.dart';
import 'package:vred/features/decorations/shadow_decoration.dart';

class ShadowIcon extends StatelessWidget {
  final double height;
  final double width;
  const ShadowIcon({Key? key, required this.height, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
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
          borderRadius: BorderRadius.circular(20),
          boxShadow: commonOuterBoxShadow()),

      // shadowButtonDecoration(BoxShape.rectangle, BorderRadius.circular(20), Colors.grey.shade900),
      child: const RadiantGradientMask(child: Icon(Icons.emoji_events_outlined, size: 32, color: Colors.white)),
    );
  }
}

// shader mask with radial gradient with unique premium colors
class RadiantGradientMask extends StatelessWidget {
  const RadiantGradientMask({required this.child, Key? key}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => const RadialGradient(
        center: Alignment.center,
        radius: 0.3,
        // colors: [Color.fromARGB(255, 207, 172, 155), Color.fromARGB(255, 126, 81, 44)],
        colors: [Color.fromARGB(255, 221, 174, 136), Color.fromARGB(255, 173, 95, 30)],
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
    final size = MediaQuery.of(context).size;
    return InkWell(
      child: Container(
        height: size.height * 0.07,
        width: size.width * 0.35,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Color.fromARGB(255, 57, 88, 168),
          // Color(0xFF32519D)
          borderRadius: BorderRadius.circular(35),
          border: Border.all(color: Colors.black, width: 3),
          boxShadow: const [
            BoxShadow(
              blurStyle: BlurStyle.normal,
              color: Colors.white30,
              spreadRadius: 3,
              blurRadius: 15,
              offset: Offset(-4, -4), // changes position of shadow
            ),
            BoxShadow(
              blurStyle: BlurStyle.normal,
              color: Colors.black87,
              spreadRadius: 3,
              blurRadius: 15,
              offset: Offset(4, 4), // changes position of shadow
            ),
          ],
        ),
        child: Center(
          child: Text(
            'Pay now',
            style: TextStyle(
                color: Colors.grey.shade400,
                fontFamily: GoogleFonts.lato().fontFamily,
                letterSpacing: 1,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

// for Manage and other dark buttons with text
class DarkShadowButton extends StatelessWidget {
  const DarkShadowButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      child: Container(
        height: size.height * 0.07,
        width: size.width * 0.35,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          gradient: blackGradient,
          color: scaffoldColor,
          // Color(0xFF32519D)
          borderRadius: BorderRadius.circular(35),
          boxShadow: const [
            BoxShadow(
              blurStyle: BlurStyle.normal,
              color: Colors.white30,
              spreadRadius: 3,
              blurRadius: 15,
              offset: Offset(-4, -4), // changes position of shadow
            ),
            BoxShadow(
              blurStyle: BlurStyle.normal,
              color: Colors.black87,
              spreadRadius: 3,
              blurRadius: 15,
              offset: Offset(4, 4), // changes position of shadow
            ),
          ],
        ),
        child: Center(
          child: Text(
            'Manage',
            style: TextStyle(
                color: Colors.grey.shade400,
                fontFamily: GoogleFonts.lato().fontFamily,
                letterSpacing: 1,
                fontWeight: FontWeight.bold),
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
