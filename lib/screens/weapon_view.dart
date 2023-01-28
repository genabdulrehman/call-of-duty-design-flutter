import 'package:codm_loadout/constants/textstyle.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

class WeaponView extends StatefulWidget {
  const WeaponView({Key? key}) : super(key: key);

  @override
  State<WeaponView> createState() => _WeaponViewState();
}

class _WeaponViewState extends State<WeaponView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          //color: Colors.red,
          image: DecorationImage(
            image: AssetImage("images/weapon1.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 60),
            child:
/*-------------------------------------------------------------------------- */
/*                               back button                                 */
/* ------------------------------------------------------------------------- */
                Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //primary weapon text
                InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.pop(context);
                    });
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SvgPicture.asset("svg/back.svg"),
                      const SizedBox(width: 10),
                      const Padding(
                        padding: EdgeInsets.only(top: 4.0),
                        child: Text(
                          'PRIMARY WEAPON',
                          style: kTextStyle,
                        ),
                      ),
                      const SizedBox(width: 30),
                      //Image.asset("images/pin.png", scale: 1.5),
                    ],
                  ),
                ),

/*-------------------------------------------------------------------------- */
/*                               weapon VIEW                                 */
/* ------------------------------------------------------------------------- */
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(width: 40),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Expanded(
                        child: Hero(
                          tag: 'mac10!',
                          child: Image.network(
                            'http://cachemonet.com/src/center/uzi.gif',
                            scale: 1.6,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Image.asset(
                        'images/camera.png',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
