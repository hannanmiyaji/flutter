import 'package:flutter/material.dart';

class LicensesProductScreen extends StatefulWidget {
  const LicensesProductScreen({super.key});

  static  String name = '/licenses-product';

  @override
  State<LicensesProductScreen> createState() => _LicensesProductScreenState();
}

class _LicensesProductScreenState extends State<LicensesProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Licenses Product Screen'),
      ),
      body: ElevatedButton(
        child: Center(child: const Text('Show about Dialog')),
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => const AboutDialog(
              applicationIcon: FlutterLogo(),
              applicationLegalese: 'Legalese',
              applicationName: 'Flutter App',
              applicationVersion: 'varsion 1.0.0',
              children: [
                Text('This is a text created by Flutter Mapp'),
              ],
            ),
          );
        },
      ),
    );
  }
}
