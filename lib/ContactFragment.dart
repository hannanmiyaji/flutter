import 'package:flutter/cupertino.dart';

class ContactFragment extends StatefulWidget {
  const ContactFragment({super.key});

  @override
  State<ContactFragment> createState() => _ContactFragmentState();
}

class _ContactFragmentState extends State<ContactFragment> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Center(child: Text("ContactFragment"),),);
  }
}
