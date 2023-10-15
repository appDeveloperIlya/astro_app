import 'package:astro_app/domain/interactors/_export.dart';
import 'package:astro_app/presentation/_export.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarController extends GetxProgressController {
  final CalendarInteractor _calendarInteractor;

  CalendarController(this._calendarInteractor);

  PageController? _calendarController;

  final scrollController = ScrollController().obs;
  final calendarFormat = CalendarFormat.month.obs;
  final tabIndex = 0.obs;
  final headerDate = ''.obs;
  final headerWeekDayName = ''.obs;
  final opacity = 1.0.obs;

  final planetPozX = 3.0.obs;
  final planetPozY = 2.2.obs;
  final planetHeight = 340.0.obs;

  // calendar
  final calendar_currentMonth = ''.obs;
  final focusedDay = DateTime.now().obs;

  @override
  void onInit() async {
    final currentDate = DateTime.now();

    _updateHeaderDate(currentDate);
    _updateCurrentMonth(currentDate);

    scrollController.value.addListener(onScroll);

    super.onInit();
  }

  void onScroll() {
    final scrollControllerValue = scrollController.value;

    double newOpacity = 1.0 - (scrollControllerValue.offset / 50.0);
    double newPlanetPozY = 2.2 + (scrollControllerValue.offset / 120.0);
    double newPlanetPozX = 3.0 - (scrollControllerValue.offset / 100.0);
    double newPlanetHeight = 340 + (scrollControllerValue.offset / 2.0);

    planetPozY.value = newPlanetPozY.clamp(2.2, 3);
    planetPozX.value = newPlanetPozX.clamp(2.0, 3.0);
    planetHeight.value = newPlanetHeight.clamp(340, 440);

    opacity.value = newOpacity.clamp(0.0, 1.0);

    if (opacity.value == 0.0) {
      calendarFormat.value = CalendarFormat.week;
    } else if (opacity.value == 1.0) {
      calendarFormat.value = CalendarFormat.month;
    }

    update();
  }

  void onCalendarCreated(PageController pageController) {
    _calendarController ??= pageController;
  }

  void onPageChanged(DateTime focusedDay) {
    _updateCurrentMonth(focusedDay);
  }

  void _updateHeaderDate(DateTime date) {
    headerDate.value = '21.09';
    headerWeekDayName.value = DateFormat.E().format(date);
    update();
  }

  void _updateCurrentMonth(DateTime date) {
    focusedDay.value = date;
    calendar_currentMonth.value = DateFormat.MMMM().format(date);
    update();
  }

  Widget getCalendarDays(
    BuildContext context,
    DateTime day,
    DateTime focusedDay,
  ) {
    final weekDayNumbers = DateFormat.d().format(day);

    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          weekDayNumbers,
          style: AppTextStyles.l_numb(),
        ),
        AppImages.getAssetVectorImage(
          AppImages.ic_moon_phase_1,
          width: AppDimens.icon_19,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '6',
              style: AppTextStyles.m_numb(),
            ),
            const SizedBox(width: AppDimens.margin_4),
            Text(
              '3/4',
              style: AppTextStyles.inter_400(fontSize: AppTextStyles.size_10),
            ),
          ],
        ),
      ],
    );
  }

  Widget getCalendarToday(
    BuildContext context,
    DateTime day,
    DateTime focusedDay,
  ) {
    final weekDayNumbers = DateFormat.d().format(day);

    return DecoratedBox(
      decoration: const BoxDecoration(
        color: AppColors.white_c,
        borderRadius: BorderRadius.all(Radius.circular(6)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            weekDayNumbers,
            style: AppTextStyles.l_numb(),
          ),
          AppImages.getAssetVectorImage(
            AppImages.ic_moon_phase_1,
            width: AppDimens.icon_19,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '6',
                style: AppTextStyles.m_numb(),
              ),
              const SizedBox(width: AppDimens.margin_4),
              Text(
                '3/4',
                style: AppTextStyles.inter_400(fontSize: AppTextStyles.size_10),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


 // void getCalendar() async {
  //   setLoading(true);
  //   final result = await _calendarInteractor.getUserId();

  //   setLoading(false);
  // }