import 'package:flutter/material.dart';

import '../constants/textstyle.dart';

class WeaponDetail extends StatelessWidget {
  final String detailName;
  final int rating;
  //final Color color;
  final double ratePercent;
  final double rateColorPercent;
  const WeaponDetail(
      {required this.detailName,
      required this.rating,
      //required this.color,
      required this.ratePercent,
      required this.rateColorPercent});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: 100,
        height: 100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  detailName,
                  style: kTextStyle.copyWith(
                      fontWeight: FontWeight.normal,
                      color: Colors.white.withOpacity(0.9),
                      letterSpacing: 0.6,
                      fontSize: 16),
                ),
                Text(
                  rating.toString(),
                  style: kTextStyle.copyWith(fontSize: 16),
                ),
              ],
            ),
            const SizedBox(height: 4),
            Stack(
              children: [
                //1
                Container(
                  height: 6,
                  width: 100,
                  color: Colors.white.withOpacity(0.3),
                ),

                //+ or -
                // Container(
                //   height: 7,
                //   width: rateColorPercent,
                //   color: color,
                // ),

                //indicator
                Container(
                  height: 6,
                  width: ratePercent,
                  color: Colors.white.withOpacity(0.8),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
