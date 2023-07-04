import 'package:fl_country_code_picker/fl_country_code_picker.dart' as flc;
import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teleteam/core/constant.dart';
import 'package:teleteam/screens/splash_screen/view/splash_screen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      supportedLocales: flc.supportedLocales.map((e) => Locale(e)),
      localizationsDelegates: const [
        CountryLocalizations.delegate,
      ],
      debugShowCheckedModeBanner: false,
      title:'Teleteam project',
      theme: ThemeData(primarySwatch: kGreyColor),
      home: SplashScreen(),
    );
  }
}
