import 'package:flutter/material.dart';
import 'package:astro_app/presentation/_export.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardingController>(
      init: OnboardingController(),
      builder: (ctr) {
        return Scaffold(
          backgroundColor: AppColors.violet_bg,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AppImages.getAssetImage(
                    ctr.currentOnboardingScreen.value.getBGimage,
                    height: Get.size.getHeight(400),
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: Get.size.getHeight(20)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: AppDimens.margin_16),
                    child: Row(
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: const BorderRadius.all(Radius.circular(AppDimens.border_radius_20)),
                            child: TweenAnimationBuilder<double>(
                              duration: const Duration(milliseconds: 400),
                              curve: Curves.easeInOut,
                              tween: Tween<double>(
                                begin: 0,
                                end: ctr.firstIndicatorValue.value,
                              ),
                              builder: (context, value, _) {
                                return LinearProgressIndicator(
                                  value: value,
                                  valueColor: const AlwaysStoppedAnimation<Color>(AppColors.mint),
                                  backgroundColor: AppColors.black_b,
                                  minHeight: AppDimens.margin_6,
                                );
                              },
                            ),
                          ),
                        ),
                        const SizedBox(width: AppDimens.margin_6),
                        Expanded(
                          child: ClipRRect(
                            borderRadius: const BorderRadius.all(Radius.circular(AppDimens.border_radius_20)),
                            child: TweenAnimationBuilder<double>(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeInOut,
                              tween: Tween<double>(
                                begin: 0,
                                end: ctr.secontIndicatorValue.value,
                              ),
                              builder: (context, value, _) {
                                return LinearProgressIndicator(
                                  value: value,
                                  valueColor: const AlwaysStoppedAnimation<Color>(AppColors.mint),
                                  backgroundColor: AppColors.black_b,
                                  minHeight: AppDimens.margin_6,
                                );
                              },
                            ),
                          ),
                        ),
                        const SizedBox(width: AppDimens.margin_6),
                        Expanded(
                          child: ClipRRect(
                            borderRadius: const BorderRadius.all(Radius.circular(AppDimens.border_radius_20)),
                            child: TweenAnimationBuilder<double>(
                              duration: const Duration(milliseconds: 250),
                              curve: Curves.easeInOut,
                              tween: Tween<double>(
                                begin: 0,
                                end: ctr.thirdIndicatorValue.value,
                              ),
                              builder: (context, value, _) {
                                return LinearProgressIndicator(
                                  value: value,
                                  valueColor: const AlwaysStoppedAnimation<Color>(AppColors.mint),
                                  backgroundColor: AppColors.black_b,
                                  minHeight: AppDimens.margin_6,
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: AppDimens.margin_16),
                    child: Column(
                      children: [
                        SizedBox(height: Get.size.getHeight(20)),
                        Text(
                          ctr.currentOnboardingScreen.value.getTitle,
                          style: AppTextStyles.h2(color: AppColors.white_a),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: Get.size.getHeight(10)),
                        Text(
                          ctr.currentOnboardingScreen.value.getDecription,
                          style: AppTextStyles.h4(color: AppColors.for_body_text),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppDimens.margin_16,
                ),
                child: Column(
                  children: [
                    ButtonPrimaryLarge(
                      onPressed: ctr.goToNextScreen,
                      titleRes: ctr.currentOnboardingScreen.value.getButtonTitle,
                    ),
                    const SizedBox(height: AppDimens.margin_25),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
