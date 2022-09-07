import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:vred/common/widgets/credit_card_widget.dart';
import 'package:vred/common/widgets/shadow_button.dart';
import 'package:vred/constants/colors.dart';
import 'package:vred/constants/temp_cashback.dart';
import 'package:vred/screens/cashback_screen.dart';
import 'package:vred/screens/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final File? imageFile = null;
  final points = 32789; // get from provider
  final voucherCount = 5; // get from provider
  @override
  Widget build(BuildContext context) {
    final firstName = "Varun"; // todo: use ref to get name
    final size = MediaQuery.of(context).size;
    final viewElements = displayList(context, firstName);
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Row(
              children: [
                // show the vred points here
                Row(
                  children: [
                    const Icon(
                      FontAwesomeIcons.coins,
                      color: Colors.amber,
                      size: 28,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 5, top: 5, bottom: 5, right: 8),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.1),
                        shape: BoxShape.rectangle,
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.zero,
                            topLeft: Radius.zero,
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                      ),
                      child: Text(
                        points.toString(),
                        style: const TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  width: 10,
                ),

                // show voucher count here
                Row(
                  children: [
                    Image.asset(
                      'assets/images/voucher.png',
                      height: 28,
                      width: 28,
                      color: Colors.teal,
                    ),
                    Container(
                      width: 35,
                      padding: const EdgeInsets.only(left: 5, top: 5, bottom: 5, right: 8),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.1),
                        shape: BoxShape.rectangle,
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.zero,
                            topLeft: Radius.zero,
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                      ),
                      child: Text(
                        voucherCount.toString(),
                        style: const TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            leading: Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 15),
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white54,
                child: GestureDetector(
                  onTap: () => Get.to(() => const ProfileScreen(),
                      transition: Transition.leftToRight, duration: Duration(milliseconds: 400)),
                  child: CircleAvatar(
                      radius: 28,
                      backgroundImage: imageFile == null
                          ? const AssetImage('assets/images/default_profile.png')
                          : FileImage(imageFile!) as ImageProvider),
                ),
              ),
            ),
            toolbarHeight: 80,
            backgroundColor: scaffoldColor,
            elevation: 0,
            leadingWidth: 100,
            // primary: ,

            actions: [
              Container(
                padding: EdgeInsets.only(top: 10, bottom: 15, left: 10, right: 10),
                child: GestureDetector(
                  onTap: () =>
                      // Navigator.of(context).push(_createRoute()),
                      Get.to(
                    CashbackScreen(
                      cashbackList: tempList,
                      isVoucherScreen: false,
                    ),
                    transition: Transition.downToUp,
                    duration: Duration(milliseconds: 400),
                  ),
                  child: const SizedBox(child: ShadowIcon(height: 60, width: 60)),
                ),
              ),
              const SizedBox(
                width: 20,
              )
            ],
          ),
          backgroundColor: scaffoldColor,
          body: NotificationListener<OverscrollIndicatorNotification>(
            onNotification: (notification) {
              notification.disallowIndicator(); // disallow scroll glow top and bottom
              return true;
            },
            child: ListView.builder(
              itemCount: viewElements.length,
              itemBuilder: (BuildContext context, int index) {
                return viewElements[index];
              },
            ),
          )),
    );
  }
}

// todo: check shader animaton jank here  => https://docs.flutter.dev/perf/shader, https://docs.flutter.dev/perf
/*
[
    Padding(
      padding: const EdgeInsets.only(left: 32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('welcome, $firstName',
              style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'explore and claim\nthe membership perks reserved for you',
            style: TextStyle(color: Colors.white38, fontSize: 12),
          )
        ],
      ),
    ),
    Padding(
      padding: EdgeInsets.symmetric(vertical: size.height * 0.02, horizontal: size.width * 0.05),
      child: const CreditCardWidget(
          cardCompany: "amex",
          cardNumber: "1483 29XX XXXX 8890",
          firstName: "VARUN",
          lastName: "ARORA",
          overdueValue: "3433.56"),
    ),
    Padding(
      padding: EdgeInsets.symmetric(vertical: size.height * 0.02, horizontal: size.width * 0.05),
      child: const CreditCardWidget(
          cardCompany: "hdfc",
          cardNumber: "5589 83XX XXXX 9161",
          firstName: "VARUN",
          lastName: "ARORA",
          overdueValue: "0"),
    ),
    Padding(
      padding: EdgeInsets.symmetric(vertical: size.height * 0.02, horizontal: size.width * 0.05),
      child: const CreditCardWidget(
          cardCompany: "icici",
          cardNumber: "3493 72XX XXXX 1022",
          firstName: "VARUN",
          lastName: "ARORA",
          overdueValue: "1024.32"),
    )
  ];
*/