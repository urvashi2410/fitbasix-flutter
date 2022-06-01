import 'package:flutter/material.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';

class WaterWidget extends StatelessWidget {
  const WaterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 6,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: LiquidLinearProgressIndicator(
          value: 0.5,
          valueColor: const AlwaysStoppedAnimation(
            Colors.blue,
          ), // Defaults to the current Theme's accentColor.
          backgroundColor:
              Colors.white, // Defaults to the current Theme's backgroundColor.
          direction: Axis.vertical,
          borderRadius: 20.0,
        ),
      ),
    );
  }
}
