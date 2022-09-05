import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CashbackCard extends StatelessWidget {
  final String value;
  const CashbackCard({Key? key, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.fromLTRB(30, 5, 5, 20),
      height: size.height * 0.15,
      width: size.width * 0.9, // or max based on padding
      decoration: BoxDecoration(
        color: Colors.green,
        shape: BoxShape.rectangle,
        border: Border.all(color: Colors.black, width: 3),
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
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
        ],
      ),
      child: Column(
        children: [
          //  Align(
          //   alignment: Alignment.topRight,
          //   child: Text(
          //     'mystery cashback',
          //     style: TextStyle(color: Colors.white70, fontSize: 12),
          //   ),
          // ),
          Row(
            children: [
              SizedBox(
                width: size.width * 0.4,
                child: Divider(
                  color: Colors.grey[350],
                  thickness: 1,
                  height: 20,
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              const Align(
                alignment: Alignment.topRight,
                child: Text(
                  'mystery cashback',
                  style: TextStyle(color: Colors.white70, fontSize: 12),
                ),
              ),
            ],
          ),

          Row(
            children: [
              SizedBox(
                width: size.width * 0.4,
                child: Text(
                  'you won \ncashback of Rs $value',
                  style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 16),
                ),
              ),
              // Icon(
              //   Icons.card_giftcard_rounded,
              //   color: Colors.white,
              //   size: 40,
              // )
              SizedBox(
                width: size.width * 0.22,
              ),
              ShaderMask(
                shaderCallback: (bounds) => const RadialGradient(
                  center: Alignment.center,
                  radius: 0.5,
                  // colors: [Color.fromARGB(255, 226, 220, 186), Color.fromARGB(255, 214, 193, 100)],
                  colors: [Color.fromARGB(255, 226, 220, 186), Color.fromARGB(255, 230, 206, 102)],
                  tileMode: TileMode.mirror,
                ).createShader(bounds),
                child: const FaIcon(
                  FontAwesomeIcons.gift,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              const SizedBox(width: 25),
              SizedBox(
                height: 60,
                child: VerticalDivider(
                  color: Colors.grey[350],
                  thickness: 1,
                ),
              ),
            ],
            // Color.fromARGB(255, 197, 190, 190)
            // Color.fromARGB(255, 226, 220, 186), Color.fromARGB(255, 207, 186, 93)
          ),
        ],
      ),
    );
  }
}

// Based on current layout, cashback value between 0 and 999