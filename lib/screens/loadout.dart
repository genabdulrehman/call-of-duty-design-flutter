import 'package:codm_loadout/constants/textstyle.dart';
import 'package:codm_loadout/screens/weapon_view.dart';
import 'package:codm_loadout/widgets/button.dart';
import 'package:codm_loadout/widgets/weapon_container.dart';
import 'package:codm_loadout/widgets/weapon_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoadoutScreen extends StatefulWidget {
  const LoadoutScreen({Key? key}) : super(key: key);

  @override
  State<LoadoutScreen> createState() => _LoadoutScreenState();
}

class _LoadoutScreenState extends State<LoadoutScreen> {
  List<String> weaponType = [
    'SMG',
    'ASSAULT',
    'SNIPER',
    //'LMG',
    'SHOTGUN',
    'MARKSMAN'
  ];

  //weapon name and image
  List<Map> weapon = [
    {"name": "Mac 10", "image": "images/mac10.png"},
    {"name": "Switchblade", "image": "images/switchblade.png"},
    {"name": "GKS", "image": "images/GKS.png"},
    {"name": "MSMC", "image": "images/MSMC.png"},
    {"name": "MX9", "image": "images/MX9.png"},
    {"name": "QQ9", "image": "images/QQ9.png"},
    {"name": "cordite", "image": "images/cordite.png"},
    {"name": "QRT", "image": "images/qrt.png"},
    {"name": "tek9", "image": "images/tek9.png"},
    {"name": "tek9", "image": "images/tek9.png"},
    {"name": "tek9", "image": "images/tek9.png"},
    {"name": "tek9", "image": "images/tek9.png"},
    {"name": "tek9", "image": "images/tek9.png"},
    {"name": "tek9", "image": "images/tek9.png"},
    {"name": "tek9", "image": "images/tek9.png"},
    {"name": "tek9", "image": "images/tek9.png"},
  ];

  bool isSelected = true;

  //final String displayedWeapon = 'http://cachemonet.com/src/center/uzi.gif';

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
/*-------------------------------------------------------------------------- */
/*                               weapon type VIEW                            */
/* ------------------------------------------------------------------------- */
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //primary weapon text
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
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
                            Image.asset("images/pin.png", scale: 1.5),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: SizedBox(
                            height: 210,
                            width: 120,
                            child: Expanded(
                              child: ListView.separated(
                                itemCount: weaponType.length,
                                itemBuilder: (context, index) {
                                  return Button1(text: weaponType[index]);
                                },
                                separatorBuilder: (context, index) {
                                  return const SizedBox(
                                    height: 4,
                                  );
                                },
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 8),

                        Padding(
                          padding: const EdgeInsets.only(left: 35),
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 14, vertical: 8),
                            height: 38,
                            width: 110,
                            color: Colors.black.withOpacity(0.4),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Default',
                                  style: kTextStyle.copyWith(
                                      fontSize: 16,
                                      color: Colors.white.withOpacity(0.9)),
                                ),
                                SvgPicture.asset('svg/up.svg')
                              ],
                            ),
                          ),
                        )
                      ],
                    ),

/*-------------------------------------------------------------------------- */
/*                               weapon VIEW                                 */
/* ------------------------------------------------------------------------- */
                    Padding(
                      padding: const EdgeInsets.only(right: 70, top: 35),
                      child: SizedBox(
                        height: 250,
                        width: 250,
                        child: Hero(
                          tag: 'mac10!',
                          child: Image.asset(
                            'images/uzi2.gif',
                            scale: 2,
                          ),
                        ),
                      ),
                    ),

/* -------------------------------------------------------------------------- */
/*                               weapon info VIEW                             */
/* -------------------------------------------------------------------------- */
                    Row(
                      children: [
                        //compare and view buttons
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 25,
                              decoration: BoxDecoration(
                                  color: Colors.orange.withOpacity(.2),
                                  borderRadius: BorderRadius.circular(5)),
                              width: 25,
                              padding: EdgeInsets.all(3),
                              child: Center(
                                child: Icon(
                                  Icons.loop,
                                  color: Colors.yellow,
                                  size: 20,
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const WeaponView()),
                                  );
                                });
                              },
                              child: Container(
                                height: 25,
                                decoration: BoxDecoration(
                                    color: Colors.orange.withOpacity(.2),
                                    borderRadius: BorderRadius.circular(5)),
                                width: 25,
                                padding: EdgeInsets.all(3),
                                child: Center(
                                  child: Image.asset(
                                    'images/zoom.png',
                                    color: Colors.yellow,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                          ],
                        ),

                        const SizedBox(width: 8),

                        Column(
                          //mainAxisSize: MainAxisSize.max,
                          children: [
                            //weapon rank
                            Container(
                              padding: const EdgeInsets.only(
                                left: 5,
                                top: 10,
                                right: 10,
                                bottom: 10,
                              ),
                              height: 50,
                              width: 220,
                              color: Colors.black.withOpacity(0.4),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 2),
                                    child: Image.asset(
                                      'images/weaponmaster.png',
                                      scale: 1.5,
                                    ),
                                  ),
                                  const SizedBox(width: 6),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'MASTER',
                                          style: kTextStyle.copyWith(
                                              color: const Color(0xffF0DF53),
                                              fontSize: 19),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 12),
                                  Expanded(
                                    child: Container(
                                      padding: const EdgeInsets.only(top: 4),
                                      //height: 10,
                                      //width: 70,
                                      color: const Color(0xffBAD8E0),
                                      child: Center(
                                        child: Text(
                                          'VIEW',
                                          style: kTextStyle.copyWith(
                                            color: const Color(0xff273B40),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            const SizedBox(height: 8),

                            //weapon name
                            Container(
                              padding: const EdgeInsets.all(4),
                              height: 40,
                              width: 220,
                              color: const Color(0xff69518D),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'images/epic.png',
                                    scale: 1.5,
                                  ),
                                  const SizedBox(width: 8),
                                  const Text(
                                    'Mac 10',
                                    style: kTextStyle,
                                  ),
                                ],
                              ),
                            ),

                            const SizedBox(height: 2),

                            Expanded(
                              //flex: 1,
                              child: Container(
                                padding: const EdgeInsets.all(10),
                                height: 40,
                                width: 220,
                                color: Colors.black.withOpacity(0.4),
                                child: Column(
                                  children: [
                                    //row 1
                                    Expanded(
                                      child: Row(
                                        children: const [
                                          //weapon detail
                                          WeaponDetail(
                                              detailName: 'Damage',
                                              rating: 24,
                                              ratePercent: 24,
                                              rateColorPercent: 100),
                                          //

                                          SizedBox(width: 20),

                                          //
                                          WeaponDetail(
                                              detailName: 'Fire rate',
                                              rating: 120,
                                              ratePercent: 30,
                                              rateColorPercent: 100),
                                        ],
                                      ),
                                    ),

                                    //row 2
                                    Expanded(
                                      child: Row(
                                        children: const [
                                          //weapon detail
                                          WeaponDetail(
                                              detailName: 'Accuracy',
                                              rating: 31,
                                              ratePercent: 24,
                                              rateColorPercent: 50),
                                          //

                                          SizedBox(width: 20),

                                          //
                                          WeaponDetail(
                                              detailName: 'Mobility',
                                              rating: 107,
                                              ratePercent: 60,
                                              rateColorPercent: 85),
                                        ],
                                      ),
                                    ),

                                    //row 3
                                    Expanded(
                                      child: Row(
                                        children: const [
                                          //weapon detail
                                          WeaponDetail(
                                              detailName: 'Range',
                                              rating: 44,
                                              ratePercent: 38,
                                              rateColorPercent: 60),
                                          //

                                          SizedBox(width: 20),

                                          //
                                          WeaponDetail(
                                              detailName: 'Control',
                                              rating: 26,
                                              ratePercent: 26,
                                              rateColorPercent: 0),
                                        ],
                                      ),
                                    ),

                                    ///////////row 3
                                    Expanded(
                                      child: Row(
                                        children: [
                                          Text(
                                            'Details',
                                            style: kTextStyle.copyWith(
                                                fontSize: 16),
                                          ),
                                          const SizedBox(width: 4),
                                          SvgPicture.asset("svg/forward.svg"),
                                        ],
                                      ),
                                    ),

                                    Expanded(
                                      child: Container(
                                        height: 80,
                                        width: double.infinity,
                                        decoration: const BoxDecoration(
                                          gradient: LinearGradient(
                                              colors: [
                                                Color(0xffEFCF41),
                                                Color(0xffF8E751)
                                              ],
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Quick equip',
                                            style: kTextStyle.copyWith(
                                              color: const Color(0xff273B40),
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

/* -------------------------------------------------------------------------- */
/*                             !!!!!weapons!!!!!!                             */
/* -------------------------------------------------------------------------- */
            Container(
              color: Colors.black.withOpacity(0.4),
              width: MediaQuery.of(context).size.width,
              height: 112,
              child: Padding(
                padding: const EdgeInsets.only(left: 60, right: 20, top: 2),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Image.asset(
                        'images/fwd.png',
                        scale: 1.8,
                      ),
                    ),
                    const SizedBox(width: 8),
                    SizedBox(
                      width: 775,
                      child: ListView.separated(
                        padding: const EdgeInsets.all(0),
                        scrollDirection: Axis.horizontal,
                        // To add separation line between the ListView
                        separatorBuilder: (context, index) =>
                            const SizedBox(width: 6),

                        itemCount: weapon.length,
                        itemBuilder: (BuildContext context, int index) {
                          return WeaponContainer(
                            weaponName: weapon[index]['name'],
                            weaponImage: weapon[index]['image'],
                          );
                        },
                      ),
                    ),
                    const SizedBox(width: 8),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Image.asset(
                        'images/bck.png',
                        scale: 1.8,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
