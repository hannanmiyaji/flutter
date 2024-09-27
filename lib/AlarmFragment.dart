import 'package:flutter/cupertino.dart';

class AlarmFragment extends StatefulWidget {
  const AlarmFragment({super.key});

  @override
  State<AlarmFragment> createState() => _AlarmFragmentState();
}

class _AlarmFragmentState extends State<AlarmFragment> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Center(child: Text("AlarmFragment"),),);
  }
}
