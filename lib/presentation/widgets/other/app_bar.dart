import 'package:astro_app/presentation/_export.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  final Widget title;
  final bool showInfoBtn;
  final bool showAddBtn;
  final VoidCallback? handleInfoBtn;
  final VoidCallback? handleAddBtn;

  const AppBarWidget({
    required this.title,
    required this.showInfoBtn,
    required this.showAddBtn,
    this.handleInfoBtn,
    this.handleAddBtn,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        if (showInfoBtn)
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              title,
              SizedBox(width: Get.size.width10()),
              GestureDetector(
                onTap: handleInfoBtn,
                child: AppImages.getAssetVectorImage(
                  AppImages.ic_info,
                  width: AppDimens.icon_24,
                ),
              ),
            ],
          ),
        if (!showInfoBtn) title,
        if (showAddBtn)
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              GestureDetector(
                onTap: handleAddBtn,
                child: AppImages.getAssetVectorImage(
                  AppImages.ic_add,
                  width: AppDimens.icon_24,
                ),
              ),
              SizedBox(width: Get.size.width10()),
              GestureDetector(
                child: AppImages.getAssetVectorImage(
                  AppImages.ic_menu_dots,
                  width: AppDimens.icon_36,
                ),
              ),
            ],
          ),
        if (!showAddBtn)
          GestureDetector(
            child: AppImages.getAssetVectorImage(
              AppImages.ic_menu_dots,
              width: AppDimens.icon_36,
            ),
          ),
      ],
    );
  }
}
