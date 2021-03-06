import 'package:fitbasix/Widgets/intakes.dart';
import 'package:flutter/material.dart';
import 'package:fitbasix/Constants/colors.dart';

class LowerCard extends StatelessWidget {
  final String largeTxt;
  final int cal;
  const LowerCard({
    Key? key,
    required this.largeTxt,
    required this.cal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width / 1.8,
      width: 180,
      decoration: BoxDecoration(
          color: colors.cardColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          )),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  largeTxt,
                  style: TextStyle(
                    color: colors.largeTxtColor,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '$cal kcal',
                  style: TextStyle(
                    color: colors.cardTextColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: const [
                    Intakes(
                      img: 'assets/Images/carbs.jpg',
                      name: "Carbs",
                      quantity: 259,
                      calories: 1038,
                    ),
                  ],
                ),
                Column(
                  children: const [
                    Intakes(
                      img: 'assets/Images/protien.png',
                      name: "Protien",
                      quantity: 259,
                      calories: 1038,
                    ),
                  ],
                ),
                Column(
                  children: const [
                    Intakes(
                      img: 'assets/Images/fat.jpg',
                      name: "Fat",
                      quantity: 57,
                      calories: 519,
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
