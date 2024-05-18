// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/tabs/hadeth.dart';
// import 'package:flutter_application_1/tabs/quraan.dart';
// import 'package:flutter_application_1/tabs/radio.dart';
// import 'package:flutter_application_1/tabs/sebha.dart';
// import 'package:flutter_application_1/tabs/setting.dart';

// // ignore: must_be_immutable
// class HomeScreen extends StatefulWidget {
//   static const String routName = 'homeScreen';

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   int counter = 0;
//   List tabs = [QuraanTab(), HadethTab(), SebhaTab(), RadioTab(), Settings()];
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Image.asset(
//           'assets/images/default_bg.png',
//           fit: BoxFit.fill,
//           width: double.infinity,
//         ),
//         Scaffold(
//           appBar: AppBar(
//             title: Text(
//               'Islami',
//               style: Theme.of(context).textTheme.bodyLarge,
//             ),
//           ),
//           bottomNavigationBar: BottomNavigationBar(
//             type: BottomNavigationBarType.fixed,
//             backgroundColor: Colors.blueGrey,
//             currentIndex: counter,
//             onTap: (value) {
//               setState(
//                 () {
//                   counter = value;
//                 },
//               );
//             },
//             items: [
//               BottomNavigationBarItem(
//                   icon: ImageIcon(
//                     AssetImage(
//                       'assets/images/icon_quran.png',
//                     ),
//                   ),
//                   label: 'Quraan',
//                   tooltip: 'القرآن'),
//               BottomNavigationBarItem(
//                 icon: ImageIcon(
//                   AssetImage(
//                     'assets/images/icon_hadeth.png',
//                   ),
//                 ),
//                 label: 'Hadeth',
//                 tooltip: 'الاحاديث',
//               ),
//               BottomNavigationBarItem(
//                 icon: ImageIcon(
//                   AssetImage(
//                     'assets/images/icon_sebha.png',
//                   ),
//                 ),
//                 label: 'Sebha',
//                 tooltip: "تسبيح",
//               ),
//               BottomNavigationBarItem(
//                 icon: ImageIcon(
//                   AssetImage(
//                     'assets/images/icon_radio.png',
//                   ),
//                 ),
//                 label: 'Radio',
//                 tooltip: ' الراديو',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.settings),
//                 label: 'settines',
//                 tooltip: ' الاعدادات',
//               ),
//             ],
//           ),
//           body: tabs[counter],
//         ),
//       ],
//     );
//   }

// }

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/tabs/hadeth.dart';
import 'package:flutter_application_1/tabs/quraan.dart';
import 'package:flutter_application_1/tabs/radio.dart';
import 'package:flutter_application_1/tabs/sebha.dart';
import 'package:flutter_application_1/tabs/setting.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// ignore: must_be_immutable
class HomeScreen extends StatefulWidget {
  static const String routName = 'homeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 0;
  List tabs = [QuraanTab(), HadethTab(), SebhaTab(), RadioTab(), Settings()];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            'assets/images/default_bg.png',
            
          ),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            AppLocalizations.of(context)!.appTitle,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.blueGrey,
          currentIndex: counter,
          onTap: (value) {
            setState(
              () {
                counter = value;
              },
            );
          },
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(
                    'assets/images/icon_quran.png',
                  ),
                ),
                label: 'Quraan',
                tooltip: 'القرآن'),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  'assets/images/icon_hadeth.png',
                ),
              ),
              label: 'Hadeth',
              tooltip: 'الاحاديث',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  'assets/images/icon_sebha.png',
                ),
              ),
              label: 'Sebha',
              tooltip: "تسبيح",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  'assets/images/icon_radio.png',
                ),
              ),
              label: 'Radio',
              tooltip: ' الراديو',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'settines',
              tooltip: ' الاعدادات',
            ),
          ],
        ),
        body: tabs[counter],
      ),
    );
  }
}
