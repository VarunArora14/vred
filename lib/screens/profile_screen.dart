import 'dart:io';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:vred/constants/colors.dart';
import 'package:vred/constants/temp_cashback.dart';
import 'package:vred/screens/cashback_screen.dart';
import 'package:vred/utils/utils.dart';
import 'dart:math' as math;

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key, required});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  File? imageFile;

  void selectImage() async {
    File? chosenImage = await pickImageFromGallery(context);
    if (chosenImage != null) {
      imageFile = chosenImage;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    //todo: use ref to get user data and view it here
    const firstName = "Varun";
    const lastName = "Arora";
    const phoneNumber = "8076521974";
    const crif_score = 826;
    const points = 32789;
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: scaffoldColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: scaffoldColor,
          actions: [
            GestureDetector(
              onTap: () {},
              child: const Padding(padding: EdgeInsets.all(8.0), child: Icon(Icons.notifications_none_rounded)),
            ),
            InkWell(
                splashColor: Colors.transparent,
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: const [
                      Icon(Icons.settings_outlined),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'settings',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                )),
            const SizedBox(width: 20),
          ],
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.02,
              ),
              // Image and image selector
              Stack(
                children: [
                  CircleAvatar(
                    radius: 84,
                    backgroundColor: Colors.white70,
                    child: CircleAvatar(
                      radius: 80,
                      backgroundImage: imageFile == null
                          ? const AssetImage('assets/images/default_profile.png')
                          : FileImage(imageFile!) as ImageProvider,
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 120,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white70,
                      child: IconButton(
                        onPressed: selectImage,
                        icon: Icon(Icons.camera_alt, color: Colors.grey.shade700, size: 20),
                      ),
                    ),
                  ),
                ],
              ),
              // Name of User
              const Padding(
                padding: EdgeInsets.only(top: 12.0),
                child: Text(
                  '$firstName $lastName',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              // Phone Numberof Current User
              const Padding(
                padding: EdgeInsets.only(top: 2.0),
                child: Text('+91 $phoneNumber', style: TextStyle(color: Colors.white)),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),

              // Points and voucher info
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    width: size.width * 0.1,
                  ),

                  // Show vred points
                  Container(
                    height: size.height * 0.14,
                    padding: const EdgeInsets.fromLTRB(16, 16, 12, 0),
                    width: size.width * 0.32,
                    color: const Color.fromARGB(255, 36, 39, 46),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.coins,
                          color: Colors.amber[400],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(points.toString(),
                              style:
                                  const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            children: [
                              const Text('VRED coins', style: TextStyle(color: Colors.white60, fontSize: 12)),
                              const SizedBox(
                                width: 5,
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: const Icon(
                                  Icons.east,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.15,
                  ),

                  // show coupons you have won, todo: add functionality to see coupons
                  GestureDetector(
                    onTap: () => Get.to(
                      CashbackScreen(
                        cashbackList: tempList,
                        isVoucherScreen: true,
                      ),
                      transition: Transition.downToUp,
                    ),
                    child: Container(
                      height: size.height * 0.14,
                      padding: const EdgeInsets.fromLTRB(16, 16, 12, 0),
                      width: size.width * 0.32,
                      color: const Color.fromARGB(255, 36, 39, 46),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/voucher.png',
                            height: 31,
                            width: 31,
                            color: Colors.teal,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text('vouchers you have won',
                                style: TextStyle(color: Colors.white60, fontSize: 12)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.1,
                  ),
                ],
              ),

              // credit score sizedbox
              SizedBox(
                height: size.height * 0.2,
                width: size.width,
                child: Row(
                  children: [
                    SizedBox(
                      width: size.width * 0.05,
                    ),
                    Transform.rotate(
                      angle: -math.pi / 16,
                      child: SizedBox(
                        height: 100,
                        width: 100,
                        child: Image.asset(
                          'assets/images/credit_meter.png',
                        ),
                      ),
                    ),
                    Container(
                      width: size.width * 0.7,
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'your CRIF credit score is $crif_score',
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Text(
                              'refresh your credit report to getinsights and track your credit standing',
                              style: TextStyle(color: Colors.white54, fontSize: 12),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              padding: const EdgeInsets.only(bottom: 3),
                              decoration: const BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.white, width: 2))),
                              child: const Text(
                                'View Details',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.2,
                width: size.width,
                child: Row(
                  children: [
                    SizedBox(
                      width: size.width * 0.05,
                    ),
                    Transform.rotate(
                      angle: -math.pi / 16,
                      child: SizedBox(
                        height: 100,
                        width: 100,
                        child: Image.asset(
                          'assets/images/certificate.png',
                        ),
                      ),
                    ),
                    Container(
                      width: size.width * 0.6,
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'refer & earn upto Rs 1000',
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Text(
                              'earn cashbacks for bringing your friends to VRED',
                              style: TextStyle(color: Colors.white54, fontSize: 12),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              padding: const EdgeInsets.only(bottom: 3),
                              decoration: const BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.white, width: 2))),
                              child: const Text(
                                'View Details',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// Color.fromARGB(255, 48, 51, 61)
