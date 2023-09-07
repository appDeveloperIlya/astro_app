import 'package:flutter/material.dart';
import 'package:astro_app/presentation/_export.dart';
import 'package:flutter/services.dart';
import 'package:msh_checkbox/msh_checkbox.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'package:table_calendar/table_calendar.dart';

class AsceticismScreen extends StatelessWidget {
  const AsceticismScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AsceticismController>(
      init: AsceticismController(),
      builder: (ctr) {
        return LayoutWrapper(
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              AppImages.getAssetImage(
                AppImages.img_effulgence,
                height: AppDimens.icon_800,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: CustomScrollView(
                  shrinkWrap: true,
                  slivers: [
                    SliverPinnedHeader(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          AppBarWidget(
                            title: Text(
                              'app_bar_asceticism'.tr,
                              style: AppTextStyles.h1(),
                            ),
                            showInfoBtn: true,
                            showAddBtn: true,
                            handleAddBtn: ctr.handleAddBtn,
                            handleInfoBtn: ctr.handleInfoBtn,
                          ),
                          SizedBox(height: Get.size.getHeight(10)),
                          Text(
                            ctr.currentMonth.value,
                            style: AppTextStyles.body_small(color: AppColors.white_b),
                          ),
                          SizedBox(height: Get.size.height4()),
                          Row(
                            children: [
                              InkWell(
                                onTap: ctr.onLeftChevronTap,
                                child: SizedBox(
                                  child: AppImages.getAssetVectorImage(
                                    AppImages.ic_arrow_left,
                                    height: AppDimens.icon_24,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: TableCalendar(
                                  rowHeight: AppDimens.margin_45,
                                  daysOfWeekHeight: AppDimens.margin_0,
                                  calendarFormat: CalendarFormat.week,
                                  firstDay: DateTime.utc(2010, 10, 16),
                                  lastDay: DateTime.utc(2030, 3, 14),
                                  focusedDay: ctr.focusedDay.value,
                                  startingDayOfWeek: StartingDayOfWeek.monday,
                                  rangeSelectionMode: RangeSelectionMode.disabled,
                                  pageJumpingEnabled: true,
                                  daysOfWeekVisible: false,
                                  headerVisible: false,
                                  onCalendarCreated: ctr.onCalendarCreated,
                                  onPageChanged: ctr.onPageChanged,
                                  calendarBuilders: CalendarBuilders(
                                    defaultBuilder: ctr.getCalendarDays,
                                    outsideBuilder: ctr.getCalendarDays,
                                    todayBuilder: ctr.getCalendarToday,
                                  ),
                                  headerStyle: HeaderStyle(
                                    formatButtonVisible: false,
                                    formatButtonShowsNext: false,
                                    leftChevronVisible: false,
                                    rightChevronVisible: false,
                                    headerPadding: const EdgeInsets.symmetric(horizontal: AppDimens.margin_16),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: ctr.onRightChevronTap,
                                child: AppImages.getAssetVectorImage(
                                  AppImages.ic_arrow_right,
                                  height: AppDimens.icon_24,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: Get.size.height12()),
                        ],
                      ),
                    ),
                    SliverClip(
                      child: SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (BuildContext context, int index) {
                            return _AscesisWidget(
                              ctr: ctr,
                              isFinished: index.isEven,
                            );
                          },
                          childCount: 20,
                        ),
                      ),
                    ),
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

class _AscesisWidget extends StatefulWidget {
  final AsceticismController ctr;
  final bool isFinished;

  const _AscesisWidget({
    required this.ctr,
    this.isFinished = false,
  });

  @override
  State<_AscesisWidget> createState() => _AscesisWidgetState();
}

class _AscesisWidgetState extends State<_AscesisWidget> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: AppDimens.margin_10),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: AppColors.asceticism_card,
          borderRadius: BorderRadius.all(Radius.circular(12)),
          border: widget.isFinished
              ? Border.all(
                  color: AppColors.white_b,
                  width: AppDimens.margin_2,
                )
              : null,
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
            AppDimens.margin_12,
            AppDimens.margin_14,
            AppDimens.margin_12,
            AppDimens.margin_19,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(AppDimens.border_radius_20)),
                      child: LinearProgressIndicator(
                        value: 0.5,
                        valueColor: const AlwaysStoppedAnimation<Color>(AppColors.mint),
                        backgroundColor: AppColors.black_b,
                        minHeight: AppDimens.margin_4,
                      ),
                    ),
                  ),
                  const SizedBox(width: AppDimens.margin_2),
                  Expanded(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(AppDimens.border_radius_20)),
                      child: LinearProgressIndicator(
                        value: 0,
                        valueColor: const AlwaysStoppedAnimation<Color>(AppColors.mint),
                        backgroundColor: AppColors.black_b,
                        minHeight: AppDimens.margin_4,
                      ),
                    ),
                  ),
                  const SizedBox(width: AppDimens.margin_2),
                  Expanded(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(AppDimens.border_radius_20)),
                      child: LinearProgressIndicator(
                        value: 0,
                        valueColor: const AlwaysStoppedAnimation<Color>(AppColors.mint),
                        backgroundColor: AppColors.black_b,
                        minHeight: AppDimens.margin_4,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: AppDimens.margin_8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Выполнять аффирма...',
                    style: AppTextStyles.body(),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AppImages.getAssetVectorImage(
                        AppImages.ic_bell,
                        height: AppDimens.icon_14,
                      ),
                      const SizedBox(width: AppDimens.margin_3),
                      Text(
                        'Ежедневно',
                        style: AppTextStyles.body_small(color: AppColors.mint),
                      ),
                      const SizedBox(width: AppDimens.margin_3),
                      Text(
                        '09:00',
                        style: AppTextStyles.body_small(color: AppColors.mint),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: AppDimens.margin_13),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Get.size.getWidth(17)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MSHCheckbox(
                      size: AppDimens.icon_32,
                      value: isChecked,
                      colorConfig: MSHColorConfig(
                        borderColor: (_) => AppColors.white_b,
                        fillColor: (_) => AppColors.white_b,
                        checkColor: (state) =>
                            state.style == MSHCheckboxStyle.stroke ? AppColors.white_b : AppColors.black_b,
                      ),
                      style: MSHCheckboxStyle.fillScaleColor,
                      onChanged: (selected) async {
                        await HapticFeedback.heavyImpact();
                        setState(() {
                          isChecked = selected;
                        });
                      },
                    ),
                    MSHCheckbox(
                      size: AppDimens.icon_32,
                      value: isChecked,
                      colorConfig: MSHColorConfig(
                        borderColor: (_) => AppColors.white_b,
                        fillColor: (_) => AppColors.white_b,
                        checkColor: (state) =>
                            state.style == MSHCheckboxStyle.stroke ? AppColors.white_b : AppColors.black_b,
                      ),
                      style: MSHCheckboxStyle.fillScaleColor,
                      onChanged: (selected) async {
                        await HapticFeedback.heavyImpact();
                        setState(() {
                          isChecked = selected;
                        });
                      },
                    ),
                    MSHCheckbox(
                      size: AppDimens.icon_32,
                      value: isChecked,
                      colorConfig: MSHColorConfig(
                        borderColor: (_) => AppColors.white_b,
                        fillColor: (_) => AppColors.white_b,
                        checkColor: (state) =>
                            state.style == MSHCheckboxStyle.stroke ? AppColors.white_b : AppColors.black_b,
                      ),
                      style: MSHCheckboxStyle.fillScaleColor,
                      onChanged: (selected) async {
                        await HapticFeedback.heavyImpact();
                        setState(() {
                          isChecked = selected;
                        });
                      },
                    ),
                    MSHCheckbox(
                      size: AppDimens.icon_32,
                      value: isChecked,
                      colorConfig: MSHColorConfig(
                        borderColor: (_) => AppColors.white_b,
                        fillColor: (_) => AppColors.white_b,
                        checkColor: (state) =>
                            state.style == MSHCheckboxStyle.stroke ? AppColors.white_b : AppColors.black_b,
                      ),
                      style: MSHCheckboxStyle.fillScaleColor,
                      onChanged: (selected) async {
                        await HapticFeedback.heavyImpact();
                        setState(() {
                          isChecked = selected;
                        });
                      },
                    ),
                    MSHCheckbox(
                      size: AppDimens.icon_32,
                      value: isChecked,
                      colorConfig: MSHColorConfig(
                        borderColor: (_) => AppColors.white_b,
                        fillColor: (_) => AppColors.white_b,
                        checkColor: (state) =>
                            state.style == MSHCheckboxStyle.stroke ? AppColors.white_b : AppColors.black_b,
                      ),
                      style: MSHCheckboxStyle.fillScaleColor,
                      onChanged: (selected) async {
                        await HapticFeedback.heavyImpact();
                        setState(() {
                          isChecked = selected;
                        });
                      },
                    ),
                    MSHCheckbox(
                      size: AppDimens.icon_32,
                      value: isChecked,
                      colorConfig: MSHColorConfig(
                        borderColor: (_) => AppColors.white_b,
                        fillColor: (_) => AppColors.white_b,
                        checkColor: (state) =>
                            state.style == MSHCheckboxStyle.stroke ? AppColors.white_b : AppColors.black_b,
                      ),
                      style: MSHCheckboxStyle.fillScaleColor,
                      onChanged: (selected) async {
                        await HapticFeedback.heavyImpact();
                        setState(() {
                          isChecked = selected;
                        });
                      },
                    ),
                    MSHCheckbox(
                      size: AppDimens.icon_32,
                      value: isChecked,
                      colorConfig: MSHColorConfig(
                        borderColor: (_) => AppColors.white_b,
                        fillColor: (_) => AppColors.white_b,
                        checkColor: (state) =>
                            state.style == MSHCheckboxStyle.stroke ? AppColors.white_b : AppColors.black_b,
                      ),
                      style: MSHCheckboxStyle.fillScaleColor,
                      onChanged: (selected) async {
                        await HapticFeedback.heavyImpact();
                        setState(() {
                          isChecked = selected;
                        });
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
