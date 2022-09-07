import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vred/common/widgets/credit_card_widget.dart';
import 'package:vred/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
          textTheme: GoogleFonts.notoSerifTextTheme(
        Theme.of(context).textTheme,
      )),
      home: HomeScreen(),
    );
  }
}


// Run the app with --cache-sksl turned on to capture shaders in SkSL:

// flutter run --profile --cache-sksl
// If the same app has been previously run without --cache-sksl, then the --purge-persistent-cache the flag may be needed:

// flutter run --profile --cache-sksl --purge-persistent-cache