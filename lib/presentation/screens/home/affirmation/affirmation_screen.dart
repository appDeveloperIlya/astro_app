import 'package:flutter/material.dart';
import 'package:astro_app/presentation/_export.dart';

class AffirmationScreen extends StatelessWidget {
  const AffirmationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AffirmationController>(
      init: AffirmationController(),
      builder: (ctr) {
        return LayoutImgWrapper(
          hasProgress: true,
          isLoading: ctr.isLoading.value,
          backgroundImage: AppImages.getAssetImage(
            AppImages.img_bg_first,
            fit: BoxFit.cover,
          ),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('home_affirmation'.tr),
                OutlinedButton(
                  onPressed: ctr.changeLoading,
                  child: Text('click'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
