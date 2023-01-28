import 'package:codm_loadout/constants/color_constants.dart';
import 'package:flutter/material.dart';

import '../constants/textstyle.dart';

class WeaponContainer extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const WeaponContainer({
    Key? key,
    //required this.hasBorder,
    required this.weaponName,
    required this.weaponImage,
  });

  //final bool hasBorder;
  final String weaponName;
  final String weaponImage;

  @override
  State<WeaponContainer> createState() => _WeaponContainerState();
}

class _WeaponContainerState extends State<WeaponContainer> {
  bool isSelected = true;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Stack(
        children: [
          Container(
            height: 93,
            width: 178,
            decoration: BoxDecoration(
                border: Border.all(
                    color:
                        isSelected ? Colors.black.withOpacity(0) : primaryColor,
                    width: 2)),
          ),
          Positioned(
            top: 4,
            left: 4,
            child: Container(
              height: 85,
              width: 170,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xff626973), Color(0xff98A0AB)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter),
              ),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    width: double.infinity,
                    height: 26,
                    decoration: BoxDecoration(
                      color: const Color(0xff949DA6),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 0,
                          blurRadius: 1,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Text(
                      widget.weaponName,
                      style: kTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                  Expanded(
                    child: Image.asset(
                      widget.weaponImage,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
