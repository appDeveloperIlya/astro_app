import 'package:astro_app/presentation/_export.dart';
import 'package:flutter/material.dart';

class ButtonPrimaryLarge extends StatelessWidget {
  final VoidCallback onPressed;
  final String titleRes;
  final bool isValid;

  const ButtonPrimaryLarge({
    required this.onPressed,
    required this.titleRes,
    this.isValid = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: AppDimens.button_primary_height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(AppDimens.border_radius_100)),
        gradient: AppColors.astro,
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppDimens.margin_2),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.black_a,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(AppDimens.border_radius_100),
              ),
            ),
          ),
          child: Text(
            titleRes,
            style: AppTextStyles.body(),
          ),
        ),
      ),
    );
  }
}
