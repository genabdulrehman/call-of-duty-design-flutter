import 'package:codm_loadout/constants/textstyle.dart';
import 'package:codm_loadout/widgets/custom_border.dart';
import 'package:flutter/material.dart';

import 'custom_border.dart';

class Button1 extends StatelessWidget {
  final String text;

  Button1({required this.text});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 40,
        width: 120,
        child: Center(
          child: ClipPath(
            clipper: CustomClip(),
            child: Container(
              padding: const EdgeInsets.only(top: 10, bottom: 10, left: 16),
              width: 110,
              height: 34,
              color: Colors.white.withOpacity(0.3),
              child: Text(text, style: kTextStyle),
            ),
          ),
        ),
      ),
    );
  }
}
