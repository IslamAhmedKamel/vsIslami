// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/hadethDetails.dart';
import 'package:flutter_application_1/hadethModel.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class HadethTab extends StatefulWidget {
  const HadethTab({super.key});
  static const String routName = 'hadethScreen';

  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<HadethModel> allAhadethList = [];
  bool flag = true;
  String title = '';
  List<String> ahadethList = [];
  List<String> content = [];
  loadeHadeth() async {
    String allAhadeth = await rootBundle.loadString('assets/files/ahadeth.txt');
    ahadethList = allAhadeth.split('#');
    for (var i = 0; i < ahadethList.length; i++) {
      String hadethOne = ahadethList[i];
      List<String> hadethOneLines = ahadethList[i].trim().split('\n');
      // String title = hadethOne[0];
      title = hadethOneLines[0];
      hadethOneLines.removeAt(0);
      // List<String> content = hadethOne;
      content = hadethOneLines;
       HadethModel hadethModel = HadethModel(title, content);
      allAhadethList.add(hadethModel);
    }
    setState(() {});
    flag = false;
  }

  @override
  Widget build(BuildContext context) {
    if (flag == true) {
      loadeHadeth();
    }

    return Column(
      children: [
        Center(
          child: Image.asset(
            'assets/images/hadeth_logo.png',
          ),
        ),
        Divider(),
        Text(

          AppLocalizations.of(context)!.ahadeths,


        ),
        Divider(),
        Expanded(
          child: ListView.separated(
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  HadethDetails.routName,
                  arguments:allAhadethList[index],
                );
              },
              child: Container(
                padding: EdgeInsets.all(4),
                child: Center(
                  child: Text(
                  allAhadethList[index].name,
                  ),
                ),
              ),
            ),
            separatorBuilder: (context, index) => Divider(
              height: 0,
              color: Colors.brown,
            ),
            itemCount: allAhadethList.length,
          ),
        )
      ],
    );
  }
}
