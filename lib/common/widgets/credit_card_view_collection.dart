// Collection of credit cards returned based on their company name and CardModel
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vred/constants/colors.dart';

/// american express card view
class AmexCardView extends StatelessWidget {
  final String cardNumber;
  final String firstName;
  final String lastName;
  const AmexCardView({
    Key? key,
    required this.cardNumber,
    required this.firstName,
    required this.lastName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: size.height * 0.25,
          width: size.width * 0.83,
          decoration: BoxDecoration(
              gradient: blueGradient,
              // color: Colors.blue,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(20)),
        ),
        Positioned(
          left: size.width * 0.22,
          top: size.height * 0.027,
          child: Opacity(
            opacity: 0.2,
            child: Image.asset(
              'assets/images/american_express.png',
              height: 160,
              width: 160,
            ),
          ),
        ),
        Positioned(
          left: size.width * 0.6,
          child: Image.asset(
            'assets/images/american_express_logo.png',
            height: 80,
            width: 80,
            color: Colors.white,
          ),
        ),
        Positioned(
          left: size.width * 0.05,
          top: size.height * 0.03,
          child: SizedBox(
            width: size.width * 0.3,
            child: Text(
              'AMEX',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: GoogleFonts.lato().fontFamily,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.5),
            ),
          ),
        ),
        Positioned(
          top: size.height * 0.16,
          left: size.width * 0.04,
          child: Text(
            cardNumber,
            style: TextStyle(
                color: Colors.white, fontFamily: GoogleFonts.lato().fontFamily, fontSize: 16, letterSpacing: 0.5),
          ),
        ),
        Positioned(
          top: size.height * 0.195,
          left: size.width * 0.04,
          child: Text(
            '$firstName  $lastName',
            style: TextStyle(
              color: Colors.white,
              fontFamily: GoogleFonts.lato().fontFamily,
              fontSize: 13,
              letterSpacing: 1.2,
            ),
          ),
        ),
      ],
    );
  }
}

/// icici card view
class IciciCardView extends StatelessWidget {
  final String cardNumber;
  final String firstName;
  final String lastName;
  const IciciCardView({
    Key? key,
    required this.cardNumber,
    required this.firstName,
    required this.lastName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: size.height * 0.25,
          width: size.width * 0.83,
          decoration: BoxDecoration(
              gradient: purpleGradient,
              // color: Colors.blue,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(20)),
        ),
        Positioned(
          top: size.height * 0.025,
          left: size.width * 0.55,
          child: Image.asset(
            'assets/images/icici_logo_2.png',
            height: 20,
            width: 20,
            // color: Colors.white,
          ),
        ),
        Positioned(
          left: size.width * 0.6,
          child: Image.asset(
            'assets/images/icici_text_logo.png',
            height: 70,
            width: 80,
            color: Colors.white,
          ),
        ),
        Positioned(
          left: size.width * 0.05,
          top: size.height * 0.03,
          child: SizedBox(
            width: size.width * 0.4,
            child: Text(
              'ICICI BANK',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: GoogleFonts.lato().fontFamily,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.5),
            ),
          ),
        ),
        Positioned(
          top: size.height * 0.16,
          left: size.width * 0.04,
          child: Text(
            cardNumber,
            style: TextStyle(
                color: Colors.white, fontFamily: GoogleFonts.lato().fontFamily, fontSize: 16, letterSpacing: 0.5),
          ),
        ),
        Positioned(
          top: size.height * 0.195,
          left: size.width * 0.04,
          child: Text(
            '$firstName  $lastName',
            style: TextStyle(
              color: Colors.white,
              fontFamily: GoogleFonts.lato().fontFamily,
              fontSize: 13,
              letterSpacing: 1.2,
            ),
          ),
        ),
        Positioned(
            left: size.width * 0.65,
            top: size.height * 0.17,
            child: Image.asset(
              'assets/images/visa_logo.png',
              height: 50,
              width: 50,
              color: Colors.white,
            ))
      ],
    );
  }
}

/// hdfc card view
class HdfcCardView extends StatelessWidget {
  final String cardNumber;
  final String firstName;
  final String lastName;
  const HdfcCardView({
    Key? key,
    required this.cardNumber,
    required this.firstName,
    required this.lastName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: size.height * 0.25,
          width: size.width * 0.83,
          decoration: BoxDecoration(
              gradient: greyBlueGradient,
              // color: Colors.blue,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(20)),
        ),
        Positioned(
          top: size.height * 0.025,
          left: size.width * 0.5,
          child: Image.asset(
            'assets/images/hdfc_logo.png',
            height: 30,
            width: 120,

            // color: Colors.white,
          ),
        ),
        Positioned(
          left: size.width * 0.05,
          top: size.height * 0.03,
          child: SizedBox(
            width: size.width * 0.4,
            child: Text(
              'HDFC BUSINESS SIGNATURE',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: GoogleFonts.lato().fontFamily,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.5),
            ),
          ),
        ),
        Positioned(
          top: size.height * 0.16,
          left: size.width * 0.04,
          child: Text(
            cardNumber,
            style: TextStyle(
                color: Colors.white, fontFamily: GoogleFonts.lato().fontFamily, fontSize: 16, letterSpacing: 0.5),
          ),
        ),
        Positioned(
          top: size.height * 0.195,
          left: size.width * 0.04,
          child: Text(
            '$firstName  $lastName',
            style: TextStyle(
              color: Colors.white,
              fontFamily: GoogleFonts.lato().fontFamily,
              fontSize: 13,
              letterSpacing: 1.2,
            ),
          ),
        ),
        Positioned(
            left: size.width * 0.65,
            top: size.height * 0.17,
            child: Image.asset('assets/images/mastercard_logo.png', height: 50, width: 50))
      ],
    );
  }
}
