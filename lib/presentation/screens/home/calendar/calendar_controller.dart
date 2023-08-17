import 'package:astro_app/domain/interactors/_export.dart';
import 'package:astro_app/presentation/_export.dart';

class CalendarController extends GetxProgressController {
  final CalendarInteractor _calendarInteractor;

  CalendarController(this._calendarInteractor);

  final tabIndex = 0.obs;
  final calendarValue = 'NEW'.obs;

  void getCalendar() async {
    setLoading(true);
    final result = await _calendarInteractor.getUserId();
    calendarValue.value = result;
    setLoading(false);
  }

  @override
  void onInit() async {
    super.onInit();
  }
}
