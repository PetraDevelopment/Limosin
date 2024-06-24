import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:limousine/screens/on_boarding_screens/first_step_screen.dart';

import 'generated/codegen_loader.g.dart';



void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      translations: CodegenLoader(),
      // locale: Get.deviceLocale,
      locale: Get.locale,
      // supportedLocales: AppLocalizations.supportedLocales,
      // locale: const Locale('ar', ''),
      // localizationsDelegates: AppLocalizations.localizationsDelegates,
      debugShowCheckedModeBanner: false,
      home: FirstStepScreen(),
    );
  }
}
