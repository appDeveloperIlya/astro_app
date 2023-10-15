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
          backgroundImage: AppImages.getAssetImage(
            AppImages.img_bg_first,
            fit: BoxFit.cover,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppDimens.margin_16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    AppBarWidget(
                      title: Text(
                        'app_bar_afirmation_info'.tr,
                        style: AppTextStyles.body_mediun(color: AppColors.white_b),
                      ),
                      showInfoBtn: false,
                      showAddBtn: false,
                    ),
                    SizedBox(height: Get.size.getHeight(15)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppImages.getAssetVectorImage(
                          AppImages.ic_filter,
                          width: AppDimens.icon_36,
                        ),
                        SizedBox(
                          width: AppDimens.icon_36,
                          child: AppImages.getAssetVectorImage(
                            AppImages.ic_info,
                            width: AppDimens.icon_24,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: AppDimens.margin_20),
                  child: Column(
                    children: [
                      Text(
                        'С каждым днём я чувствую себя всё лучше и лучше',
                        style: AppTextStyles.h_round_b(),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: Get.size.getHeight(40)),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: Get.size.getHeight(25)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: AppImages.getAssetVectorImage(
                          AppImages.ic_like,
                          width: AppDimens.icon_44,
                        ),
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              print('Like');
                            },
                            child: AppImages.getAssetVectorImage(
                              AppImages.ic_download,
                              width: AppDimens.icon_44,
                            ),
                          ),
                          SizedBox(width: AppDimens.margin_10),
                          GestureDetector(
                            onTap: () {
                              print('download');
                            },
                            child: GestureDetector(
                              onTap: () {
                                print('Instagram');
                              },
                              child: AppImages.getAssetVectorImage(
                                AppImages.ic_inst,
                                height: AppDimens.icon_44,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
