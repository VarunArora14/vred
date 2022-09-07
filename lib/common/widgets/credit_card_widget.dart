import 'package:flutter/material.dart' hide BoxShadow, BoxDecoration;
import 'package:google_fonts/google_fonts.dart';
import 'package:vred/common/widgets/credit_card_view_collection.dart';
import 'package:vred/common/widgets/shadow_button.dart';
import 'package:vred/constants/colors.dart';
import 'package:vred/features/decorations/shadow_decoration.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class CreditCardWidget extends StatelessWidget {
  CreditCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: use ref here to get the card data and show data based on cardmodel values
    const cardCompany = "icici";
    const firstName = "VARUN";
    const lastName = "ARORA";
    const cardNumber = "5589 83XX XXXX 9161";
    const overdueValue = "5783.33";
    Map<String, dynamic> creditViewMap = {
      'amex': const AmexCardView(cardNumber: cardNumber, firstName: firstName, lastName: lastName),
      'icici': const IciciCardView(cardNumber: cardNumber, firstName: firstName, lastName: lastName),
      'hdfc': const HdfcCardView(cardNumber: cardNumber, firstName: firstName, lastName: lastName)
    };
    final size = MediaQuery.of(context).size;
    return Container(
      height: (overdueValue != "0") ? size.height * 0.5 : size.height * 0.5 - size.height * 0.089,
      width: size.width * 0.9,
      decoration: BoxDecoration(
          color: scaffoldColor, borderRadius: BorderRadius.circular(50), boxShadow: commonInnerBoxShadow()),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 20, 15, 10),
        child: Column(
          children: [
            // credit card with details with stack
            creditViewMap[cardCompany],
            // over due details
            (overdueValue != "0")
                ? SizedBox(
                    height: size.height * 0.089,
                    width: size.width * 0.83,
                    child: Row(
                      children: [
                        Container(
                            width: size.width * 0.45,
                            padding: EdgeInsets.only(left: 10, top: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'total due',
                                  style: TextStyle(
                                      color: Colors.white38,
                                      fontFamily: GoogleFonts.lato().fontFamily,
                                      fontSize: 14),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Rs $overdueValue",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: GoogleFonts.lato().fontFamily,
                                    letterSpacing: 1,
                                  ),
                                )
                              ],
                            )),
                        Container(
                          padding: EdgeInsets.only(left: size.width * 0.12, top: 15),
                          width: size.width * 0.35,
                          child: Text(
                            'OVERDUE',
                            style: TextStyle(
                                color: Color.fromARGB(255, 235, 86, 75),
                                letterSpacing: 2,
                                fontFamily: GoogleFonts.lato().fontFamily,
                                fontSize: 14),
                          ),
                        )
                      ],
                    ),
                  )
                : Container(),

            Container(
              height: size.height * 0.125,
              width: size.width * 0.83,
              padding: EdgeInsets.only(left: 16),
              child: Row(
                children: [
                  DarkShadowButton(),
                  SizedBox(
                    width: size.width * 0.05,
                  ),
                  BlueShadowButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
