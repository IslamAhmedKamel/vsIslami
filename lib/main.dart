// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/hadethDetails.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/soraScreen.dart';
import 'package:flutter_application_1/tabs/hadeth.dart';
import 'package:flutter_application_1/themeData.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});





  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English
        Locale('ar'), // Spanish
      ],


      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routName,
      routes: {
        HomeScreen.routName: (context) => HomeScreen(),
        SoraDetails.routName:(context) => SoraDetails(),
        HadethDetails.routName:(context) => HadethDetails(),
        HadethTab.routName:(context) => HadethTab(),
      },




      theme: ThemeLight.lightTheme,



    );
  }
}
