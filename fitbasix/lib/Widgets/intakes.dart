import 'package:flutter/material.dart';
import 'package:fitbasix/Constants/colors.dart';

class Intakes extends StatelessWidget {
  final String img;
  final String name;
  final int quantity;
  final int calories;
  const Intakes(
      {Key? key,
      required this.img,
      required this.name,
      required this.quantity,
      required this.calories})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(img),
            )
          ],
        ),
        SizedBox(height: 6,),
        Row(
          children: [
            Text(
              name,
              style: TextStyle(
                  color: colors.largeTxtColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  fontFamily: 'Google Sans'),
            )
          ],
        ),
        SizedBox(height: 6,),
        Row(
          children: [
            Text(
              '$quantity g',
              style: TextStyle(
                fontFamily: 'Google Sans',
                fontWeight: FontWeight.bold,
                color: colors.cardTextColor,
                fontSize: 14,
              ),
            )
          ],
        ),
        SizedBox(height: 6,),
        Row(
          children: [
            Text(
              '$calories kcal',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Google Sans',
                color: colors.caloriesColor,
                fontSize: 14,
              ),
            )
          ],
        )
      ],
    );
  }
}
