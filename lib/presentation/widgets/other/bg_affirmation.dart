import 'package:astro_app/presentation/_export.dart';
import 'package:flutter/material.dart';
import 'package:parallax_sensors_bg/parallax_sensors_bg.dart';

class BGAffirmation extends StatelessWidget {
  const BGAffirmation({super.key});

  @override
  Widget build(BuildContext context) {
    return Parallax(
      sensor: ParallaxSensor.gyroscope,
      layers: [
        Layer(
          sensitivity: 0.0,
          image: AssetImage('${AppConst.WEBP_PATH}/${AppImages.img_bg_first}'),
          preventCrop: true,
        ),
      ],
    );
  }
}
