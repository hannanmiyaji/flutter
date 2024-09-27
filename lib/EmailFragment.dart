import 'package:flutter/cupertino.dart';

class EmailFragment extends StatefulWidget {
  const EmailFragment({super.key});

  @override
  State<EmailFragment> createState() => _EmailFragmentState();
}

class _EmailFragmentState extends State<EmailFragment> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("EmailFragment"),),);
  }
}
