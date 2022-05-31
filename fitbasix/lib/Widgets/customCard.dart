import 'package:fitbasix/Constants/colors.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String upperTxt;
  final String upperImg;
  final String lowerTxt;
  final IconData icon;
  const CustomCard({
    Key? key,
    required this.upperTxt,
    required this.upperImg,
    required this.lowerTxt,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(4),
      child: Container(
        height: 210,
        width: 180,
        decoration: BoxDecoration(
            color: colors.cardColor,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            )),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      upperTxt,
                      style: TextStyle(
                          height: 1.5,
                          letterSpacing: 1.0,
                          color: colors.cardTextColor,
                          fontSize: 16,
                          fontFamily: "Google Sans",
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Image.asset(
                    upperImg,
                    width: 20,
                    height: 20,
                    // fit: BoxFit.cover,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Image.asset(
                  //   height: 50,
                  //   width: 50,
                  // )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    lowerTxt,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: colors.cardTextColor,
                        fontFamily: 'Google Sans'),
                  ),
                  Icon(
                    icon,
                    size: 30,
                    color: colors.cardTextColor,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
