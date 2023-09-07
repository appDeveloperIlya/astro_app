import 'package:astro_app/presentation/_export.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

class AsceticismController extends GetxController {
  AsceticismController();

  static const _CURVE = Curves.easeOut;
  static const _DURATION = const Duration(milliseconds: 300);

  final tabIndex = 0.obs;
  final currentMonth = ''.obs;
  final focusedDay = DateTime.now().obs;

  PageController? _calendarController;

  @override
  void onInit() async {
    super.onInit();
    _updateCurrentMonth(DateTime.now());
  }

  void handleAddBtn() {
    print('handleAddBtn');
  }

  void handleInfoBtn() {
    print('handleAddBtn');
  }

  void onCalendarCreated(PageController pageController) {
    _calendarController ??= pageController;
  }

  void onLeftChevronTap() {
    _calendarController?.previousPage(
      duration: _DURATION,
      curve: _CURVE,
    );
  }

  void onPageChanged(DateTime focusedDay) {
    _updateCurrentMonth(focusedDay);
  }

  void onRightChevronTap() {
    _calendarController?.nextPage(
      duration: _DURATION,
      curve: _CURVE,
    );
  }

  void _updateCurrentMonth(DateTime date) {
    focusedDay.value = date;
    currentMonth.value = DateFormat.MMMM().format(date);
    update();
  }

  Widget getCalendarDays(
    BuildContext context,
    DateTime day,
    DateTime focusedDay,
  ) {
    final weekDayNames = DateFormat.E().format(day);
    final weekDayNumbers = DateFormat.d().format(day);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          weekDayNames,
          style: AppTextStyles.body_mediun_SB(),
        ),
        const SizedBox(height: 2),
        Text(
          weekDayNumbers,
          style: AppTextStyles.body_small(),
        ),
      ],
    );
  }

  Widget getCalendarToday(
    BuildContext context,
    DateTime day,
    DateTime focusedDay,
  ) {
    final weekDayNames = DateFormat.E().format(day);
    final weekDayNumbers = DateFormat.d().format(day);

    return Container(
      decoration: const BoxDecoration(
        color: AppColors.white_b,
        borderRadius: BorderRadius.all(Radius.circular(6)),
      ),
      child: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  weekDayNames,
                  style: TextStyle(color: AppColors.deepViolet, fontWeight: FontWeight.w600),
                ),
                Text(
                  weekDayNumbers,
                  style: TextStyle(color: AppColors.deepViolet, fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
