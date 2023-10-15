import 'package:flutter/material.dart';
import 'package:astro_app/presentation/_export.dart';
import 'package:flutter/scheduler.dart';
import 'package:parallax_sensors_bg/parallax_sensors_bg.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:sliver_tools/sliver_tools.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CalendarController>(
      init: CalendarController(Get.find()),
      builder: (ctr) {
        return LayoutWrapper(
          hasDecorationImage: true,
          child: Stack(
            children: [
              Opacity(
                opacity: ctr.opacity.value,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: AppDimens.margin_16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppBarWidget(
                        title: Text(
                          'app_bar_moon_state'.tr, // TODO: will change dynamicly
                          style: AppTextStyles.h1(),
                        ),
                        showInfoBtn: false,
                        showAddBtn: false,
                      ),
                      SizedBox(height: Get.size.getHeight(6)),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            ctr.headerDate.value,
                            style: AppTextStyles.h2(),
                          ),
                          SizedBox(width: AppDimens.margin_5),
                          Text(
                            '(${ctr.headerWeekDayName.value})',
                            style: AppTextStyles.body(color: AppColors.white_b),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Parallax(
                sensor: ParallaxSensor.gyroscope,
                reverseVerticalAxis: true,
                layers: [
                  Layer(
                    sensitivity: 0,
                    image: AssetImage('${AppConst.WEBP_PATH}/${AppImages.img_shine}'),
                    imageFit: BoxFit.contain,
                    offset: Offset(0, -Get.height / 2.2),
                  ),
                  Layer(
                    sensitivity: 10,
                    image: AssetImage('${AppConst.WEBP_PATH}/${AppImages.img_planet}'),
                    imageFit: BoxFit.contain,
                    imageHeight: ctr.planetHeight.value,
                    offset: Offset(
                      Get.width / ctr.planetPozX.value,
                      -Get.height / ctr.planetPozY.value,
                    ),
                  ),
                ],
                child: CustomScrollView(
                  controller: ctr.scrollController.value,
                  slivers: [
                    SliverToBoxAdapter(
                      child: SizedBox(height: Get.size.getHeight(100)),
                    ),
                    SliverPinnedHeader(
                      child: Calendar(ctr: ctr),
                    ),
                    SliverClip(
                      child: SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (BuildContext context, int index) {
                            return Container(
                              margin: const EdgeInsets.all(AppDimens.margin_10),
                              width: double.infinity,
                              height: 100,
                              color: Colors.pink.withOpacity(0.2),
                              child: Text('$index'),
                            );
                          },
                          childCount: 50, // Количество элементов в списке
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

class Calendar extends StatelessWidget {
  final CalendarController ctr;
  const Calendar({
    required this.ctr,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (ctr.opacity == 0.0) SizedBox(height: Get.size.getHeight(10)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppDimens.margin_16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: AppImages.getAssetVectorImage(
                      AppImages.ic_small_left,
                      width: AppDimens.icon_22,
                    ),
                  ),
                  Text(
                    ctr.calendar_currentMonth.value,
                    style: AppTextStyles.h4_m(),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: AppImages.getAssetVectorImage(
                      AppImages.ic_small_right,
                      width: AppDimens.icon_22,
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  print('По активностям');
                },
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: AppColors.black_a,
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppDimens.margin_7,
                      vertical: AppDimens.margin_8,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        AppImages.getAssetVectorImage(
                          AppImages.ic_filter,
                          width: 20,
                        ),
                        Text(
                          'calendar_activities_btn'.tr,
                          style: AppTextStyles.body_mediun(),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: Get.size.getHeight(10)),
        DecoratedBox(
          decoration: BoxDecoration(color: AppColors.black_a),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: AppDimens.margin_14),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: AppDimens.margin_20),
                  child: TableCalendar(
                    calendarStyle: CalendarStyle(
                      outsideDaysVisible: false,
                    ),
                    formatAnimationDuration: const Duration(milliseconds: 400),
                    rowHeight: 70,
                    availableGestures: AvailableGestures.horizontalSwipe,
                    calendarFormat: ctr.calendarFormat.value,
                    firstDay: DateTime.utc(2010, 10, 16),
                    lastDay: DateTime.utc(2030, 3, 14),
                    focusedDay: ctr.focusedDay.value,
                    startingDayOfWeek: StartingDayOfWeek.monday,
                    pageJumpingEnabled: true,
                    headerVisible: false,
                    onCalendarCreated: ctr.onCalendarCreated,
                    onPageChanged: ctr.onPageChanged,
                    daysOfWeekVisible: false,
                    daysOfWeekStyle: DaysOfWeekStyle(
                      weekdayStyle: AppTextStyles.inter_400(color: AppColors.white_b),
                      weekendStyle: AppTextStyles.inter_400(color: AppColors.white_b),
                    ),
                    calendarBuilders: CalendarBuilders(
                      defaultBuilder: ctr.getCalendarDays,
                      outsideBuilder: ctr.getCalendarDays,
                      todayBuilder: ctr.getCalendarToday,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: AppDimens.margin_8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 40,
                        child: Text(
                          'Mon',
                          style: AppTextStyles.inter_400(color: AppColors.white_b),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        width: 40,
                        child: Text(
                          'Tue',
                          style: AppTextStyles.inter_400(color: AppColors.white_b),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        width: 40,
                        child: Text(
                          'Wed',
                          style: AppTextStyles.inter_400(color: AppColors.white_b),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        width: 40,
                        child: Text(
                          'Thu',
                          style: AppTextStyles.inter_400(color: AppColors.white_b),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        width: 40,
                        child: Text(
                          'Fri',
                          style: AppTextStyles.inter_400(color: AppColors.white_b),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        width: 40,
                        child: Text(
                          'Sat',
                          style: AppTextStyles.inter_400(color: AppColors.white_b),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        width: 40,
                        child: Text(
                          'Sun',
                          style: AppTextStyles.inter_400(color: AppColors.white_b),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class WidgetSize extends StatefulWidget {
  final Widget child;

  const WidgetSize({
    super.key,
    required this.child,
  });

  @override
  _WidgetSizeState createState() => _WidgetSizeState();
}

class _WidgetSizeState extends State<WidgetSize> {
  var _newSize = 0.0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      key: widgetKey,
      child: widget.child,
      height: _newSize,
    );
  }

  var widgetKey = GlobalKey();
  var oldSize;

  void postFrameCallback(_) {
    var context = widgetKey.currentContext;
    if (context == null) return;

    var newSize = context.size;
    if (oldSize == newSize) return;

    oldSize = newSize;

    setState(() {
      _newSize = newSize?.width ?? 0.0;
    });
  }
}
