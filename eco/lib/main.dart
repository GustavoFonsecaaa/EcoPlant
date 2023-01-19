import 'package:eco/LocalString.dart';

import 'package:eco/theme_service.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'splash.dart';

import 'package:flutter/material.dart';


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
theme: ThemeService().LightTheme,
darkTheme: ThemeService().darkTheme,
themeMode: ThemeService().getThemeMode(),
      translations: LocaleString(),
      locale: Locale('en','US'),
      debugShowCheckedModeBanner: false,
   home: Splash());
   
 
  }
  
  }
  
  