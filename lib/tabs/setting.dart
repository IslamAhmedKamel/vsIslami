import 'package:flutter/material.dart';
import 'package:flutter_application_1/themeData.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text('Language'),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                isScrollControlled: true,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                ),
                context: context,
                builder: (context) => Container(
                  height: MediaQuery.of(context).size.height * 0.7,
                  child:   Column(
                    children: [
                        const Padding(
                        padding: EdgeInsets.all(18.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [Text('Arabic'), SizedBox.shrink()],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'English',
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                            const Icon(Icons.done,color: ThemeLight.primary,),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                      color: const Color.fromARGB(255, 100, 63, 60))),
              child: Container(child: const Text('English')),
            ),
          ),
         
			
			
			
			
			
			
			
			
			
			
			 const SizedBox(
            height: 20,
          ),
            const Text('Mode'),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                isScrollControlled: true,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                ),
                context: context,
                builder: (context) => Container(
                  height: MediaQuery.of(context).size.height * 0.7,
                  child:   Column(
                    children: [
                      Padding(
                        padding: const  EdgeInsets.all(18.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Light',style: Theme.of(context).textTheme.bodyLarge,),
                              const Icon(Icons.done,color:ThemeLight.primary),
                          ],             
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(18.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Dark'),
                            SizedBox.shrink(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: const Color.fromARGB(255, 100, 63, 60),
                ),
              ),
              child: Container(child: const Text('Light')),
            ),
          ),
        ],
      ),
    );
  }
}
