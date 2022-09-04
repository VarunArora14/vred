import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vred/common/widgets/shadow_button.dart';

class CashbackView extends StatelessWidget {
  final int value;
  const CashbackView({Key? key, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.fromLTRB(30, 5, 20, 20),
      height: size.height * 0.15,
      width: size.width * 0.9, // or max based on padding
      decoration: BoxDecoration(
        color: Colors.green,
        shape: BoxShape.rectangle,
        border: Border.all(color: Colors.black, width: 2),
        borderRadius: BorderRadius.circular(20),
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
      child: Column(
        children: [
          const Align(
            alignment: Alignment.topRight,
            child: Text(
              'mystery cashback',
              style: TextStyle(color: Colors.white70, fontSize: 12),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'you won \ncashback of Rs $value',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 16),
              ),
              // Icon(
              //   Icons.card_giftcard_rounded,
              //   color: Colors.white,
              //   size: 40,
              // )
              ShaderMask(
                shaderCallback: (bounds) => RadialGradient(
                  center: Alignment.center,
                  radius: 0.5,
                  colors: [Color.fromARGB(255, 226, 220, 186), Color.fromARGB(255, 214, 193, 100)],
                  tileMode: TileMode.mirror,
                ).createShader(bounds),
                child: const FaIcon(
                  FontAwesomeIcons.gift,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ],
            // Color.fromARGB(255, 197, 190, 190)
            // Color.fromARGB(255, 226, 220, 186), Color.fromARGB(255, 207, 186, 93)
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
