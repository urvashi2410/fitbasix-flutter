import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import 'package:fitbasix/Constants/colors.dart';

class Gauge extends StatelessWidget {
  final int pointer;
  const Gauge({
    Key? key,
    required this.pointer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SfRadialGauge(
        
        axes: <RadialAxis>[

          RadialAxis(
            ranges: <GaugeRange>[
              GaugeRange(
                  startValue: 0,
                  endValue: pointer.toDouble(),
                  color: colors.takeDemoButton,
                  startWidth: 10,
                  endWidth: 10)
            ],
            minimum: 0,
            maximum: 150,

            pointers: <GaugePointer>[
              NeedlePointer(
                value: pointer.toDouble(),
                needleColor: Colors.white,
                knobStyle: KnobStyle(color: colors.takeDemoButton),
              ),
            ],
          )
        ],
      ),
    );
  }
}
