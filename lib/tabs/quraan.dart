// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
 import 'package:flutter_application_1/soraModel.dart';
import 'package:flutter_application_1/soraScreen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// ignore: must_be_immutable
class QuraanTab extends StatelessWidget {
  List soraName = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset(
            'assets/images/qur2an_screen_logo.png',
          ),
          Divider(
            color: Colors.brown,
          ),
          Text(
            AppLocalizations.of(context)!.soraName,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Divider(
            color: Colors.brown,
            height: 2,
          ),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) => InkWell(
                      onTap: () {
                        Navigator.pushNamed(context,  SoraDetails.routName,arguments: SoraModel(index, soraName[index])
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            soraName[index],
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),
                separatorBuilder: (context, index) => Divider(
                      height: 0.0,
                      color: Colors.brown,
                      thickness: 1,
                      endIndent: 40,
                      indent: 40,
                    ),
                itemCount: soraName.length),
          ),
        ],
      ),
    );
  }
}
