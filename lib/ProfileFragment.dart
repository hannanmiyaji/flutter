import 'package:flutter/cupertino.dart';

class ProfileFragment extends StatefulWidget {
  const ProfileFragment({super.key});

  @override
  State<ProfileFragment> createState() => _ProfileFragmentState();
}

class _ProfileFragmentState extends State<ProfileFragment> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Center(child: Text("ProfileFragment"),),);
  }
}
