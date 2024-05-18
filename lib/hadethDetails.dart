 
import 'package:flutter/material.dart';
import 'package:flutter_application_1/hadethModel.dart';

class HadethDetails extends StatelessWidget {
  const HadethDetails({super.key});
  static const routName = 'hadethDetails';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadethModel;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/default_bg.png',
          ),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            args.name,
          ),
        ),
        body: Card(
          color: const Color.fromARGB(255, 146, 163, 172),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: ListView.builder(
            itemBuilder: (context, index) => Text(
              args.content[index],
            ),
            itemCount: args.content.length,
          ),
        ),
      ),
    );
  }
}
