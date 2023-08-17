import 'package:astro_app/domain/_export.dart';
import 'package:astro_app/data/_export.dart';

class AppBindings implements Bindings {
  @override
  void dependencies() {
    DataDependencies();
    DomainDependencies();
  }
}
