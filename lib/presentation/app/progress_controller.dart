import 'package:astro_app/presentation/_export.dart';

class GetxProgressController extends GetxController {
  GetxProgressController();

  final isLoading = false.obs;

  void setLoading(bool result) {
    isLoading.value = result;
    update();
  }
}
