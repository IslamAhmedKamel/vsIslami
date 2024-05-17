import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/soraModel.dart';

class SoraDetails extends StatefulWidget {
  static const String routName = 'soradetails';

  @override
  State<SoraDetails> createState() => _SoraDetailsState();
}

class _SoraDetailsState extends State<SoraDetails> {
  bool flag = true;
  List<String> splitSora = [];
  loadFiles(int index) async {
    flag = false;
    String sora = await rootBundle.loadString('assets/files/${index + 1}.txt');

    splitSora = sora.split('\n');

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SoraModel;
    if (flag == true) {
      loadFiles(args.numOfSora);
    }

    return Container(
      decoration: const BoxDecoration(
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
            args.soraName,
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
            color: Colors.blueGrey,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: ListView.separated(
            itemBuilder: (context, index) => Text(
              '${splitSora[index]}(${index + 1})',
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.center,
            ),
            separatorBuilder: (context, index) => const Divider(
              color: Colors.brown,
            ),
            itemCount: splitSora.length,
          ),
        ),
      ),
    );
  }
}
