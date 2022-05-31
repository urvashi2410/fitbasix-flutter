import 'dart:ffi';

import 'package:fitbasix/Widgets/customCard.dart';
import 'package:fitbasix/Widgets/lowerCard.dart';
import 'package:flutter/material.dart';
import 'package:fitbasix/Constants/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.bottomNavColor,
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      
                    )
                  ],
                )
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Today",
                            style: TextStyle(
                              color: colors.cardTextColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 16
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "Apr 21",
                            style: TextStyle(
                              color: colors.cardTextColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 16
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Row(
                  children: const [
                    Expanded(
                      child: CustomCard(
                        upperTxt: 'Water Consumed',
                        upperImg: 'assets/Images/drop.png',
                        lowerTxt: '0.0 ltr of 4 ltr',
                        icon: Icons.add,
                      ),
                    ),
                    Expanded(
                      child: CustomCard(
                        upperTxt: 'Calories Burned',
                        upperImg: 'assets/Images/fire.jpg',
                        lowerTxt: '0.0 kcal',
                        icon: Icons.power_settings_new,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: const [
                    Expanded(
                        child: LowerCard(
                      largeTxt: '''Today's required calories consumption:''',
                      cal: 2596,
                    )),
                  ],
                ),
              ],
            )),
      ),
      bottomNavigationBar: bottomNavBar(),
    );
  }
}

Widget bottomNavBar() {
  return Container(
    height: 70,
    child: Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Icon(
                Icons.home,
                color: colors.bottomIconColor,
                size: 22,
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                "Home",
                style: TextStyle(
                  color: colors.bottomIconColor,
                  fontFamily: "Google Sans",
                  fontSize: 12,
                ),
              )
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.messenger_outline,
                color: colors.bottomIconColor,
                size: 22,
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                "Get Trained",
                style: TextStyle(
                  color: colors.bottomIconColor,
                  fontFamily: "Google Sans",
                  fontSize: 12,
                ),
              )
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.add,
                color: colors.bottomIconColor,
                size: 22,
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                "Post",
                style: TextStyle(
                  color: colors.bottomIconColor,
                  fontFamily: "Google Sans",
                  fontSize: 12,
                ),
              )
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.home,
                color: colors.bottomIconColor,
                size: 22,
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                "Tools",
                style: TextStyle(
                  color: colors.bottomIconColor,
                  fontFamily: "Google Sans",
                  fontSize: 12,
                ),
              )
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.more_horiz,
                color: colors.bottomIconColor,
                size: 22,
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                "More",
                style: TextStyle(
                  color: colors.bottomIconColor,
                  fontFamily: "Google Sans",
                  fontSize: 12,
                ),
              )
            ],
          ),
        ],
      ),
    ),
  );
}
