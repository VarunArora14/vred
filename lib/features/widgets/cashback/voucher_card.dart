import 'package:flutter/material.dart';
import 'package:vred/features/decorations/shadow_decoration.dart';

class VoucherCard extends StatefulWidget {
  final String itemValue;
  final String voucherExpiry; // calculate the has expired or not based on this
  final String voucherCode; // unique for each voucher
  final bool isExpired;
  const VoucherCard(
      {Key? key,
      required this.itemValue,
      required this.voucherCode,
      required this.voucherExpiry,
      required this.isExpired})
      : super(key: key);

  @override
  State<VoucherCard> createState() => _VoucherCardState();
}

class _VoucherCardState extends State<VoucherCard> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.fromLTRB(30, 5, 10, 10),
      height: size.height * 0.28,
      width: size.width * 0.9,
      decoration: BoxDecoration(
        color: Colors.orange[900],
        shape: BoxShape.rectangle,
        border: Border.all(color: Colors.black, width: 3),
        borderRadius: BorderRadius.circular(20),
        boxShadow: commonBoxShadow(),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(
                width: size.width * 0.44,
                child: const Divider(
                  color: Colors.white54,
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
                  'special voucher',
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
                  'you won a voucher\nworth Rs${widget.itemValue}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(
                width: size.width * 0.22,
              ),
              ClipRRect(
                  borderRadius: BorderRadius.circular(8), // Image border
                  child: Image.asset(
                    'assets/images/ajio.png',
                    fit: BoxFit.cover,
                    height: 40,
                    width: 40,
                  )),
              const SizedBox(
                width: 10,
              ),
              const SizedBox(
                height: 60,
                child: VerticalDivider(
                  color: Colors.white54,
                  thickness: 1,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Container(
            height: 80,
            width: size.width * 0.7,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white60, width: 0.5),
            ),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(
                'your voucher code',
                style: TextStyle(color: Colors.white60, fontSize: 10),
              ),
              const SizedBox(height: 5),
              Center(
                child: Text(
                  widget.voucherCode,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ]),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  debugPrint('voucher details pressed');
                },
                child: const Text(
                  'Details',
                  style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                      decorationStyle: TextDecorationStyle.dotted),
                ),
              ),
              Text(
                widget.isExpired ? 'ALREADY EXPIRED' : 'EXPIRES ON ${widget.voucherExpiry}',
                style: const TextStyle(color: Colors.white70),
              ),
            ],
          )
        ],
      ),
    );
  }
}

// show network image in circle avatar of this => https://media.glassdoor.com/sqll/1321544/ajio-squarelogo-1533010680533.png