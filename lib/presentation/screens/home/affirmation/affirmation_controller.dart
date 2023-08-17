import 'package:astro_app/presentation/_export.dart';

class AffirmationController extends GetxProgressController {
  AffirmationController();

  void changeLoading() async {
    setLoading(true);

    await Future<void>.delayed(const Duration(seconds: 1));

    setLoading(false);
  }

  @override
  void onInit() async {
    super.onInit();
  }
}
