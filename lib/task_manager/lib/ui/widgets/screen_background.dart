import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_manager/ui/screens/utils/assets_path.dart';


class ScreenBackground extends StatelessWidget {
  const ScreenBackground({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
     children: [
       SvgPicture.asset(
         AssetsPath.backgroundSvg,
         fit: BoxFit.cover,
         height: MediaQuery.sizeOf(context).height,
         width: double.maxFinite,
       ),
       SafeArea(child: child),
     ],
    );
  }
}
