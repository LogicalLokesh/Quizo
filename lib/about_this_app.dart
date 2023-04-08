import 'package:flutter/material.dart';

class AboutThisApp extends StatelessWidget {
  const AboutThisApp({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: const Icon(Icons.info_outline),
        onPressed: () {
          showDialog<String>(
            context: context,
            barrierDismissible: false, // user must tap button!
            builder: (BuildContext context) => AlertDialog(
              title: const Text('About Quizo'),
              content: SingleChildScrollView(
                child: ListBody(
                  children: const <Widget>[
                    Text('Version: 1.0.0\n'),
                    Text('This is a fun quiz app I made'
                        'while I was learning flutter framework.'),
                    Text('Author: LogicalLokesh\n'),
                    Text('Website: https://logicallokesh.net/'),
                  ],
                ),
              ),
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.pop(context, 'OK'),
                  child: const Text('OK, Cool!'),
                ),
              ],
            ),
          );
        });
  }
}
