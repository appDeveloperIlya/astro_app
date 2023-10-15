import 'package:astro_app/dependencies.dart';
import 'package:flutter/material.dart';
import 'package:astro_app/presentation/_export.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(AstroApp());
}

class AstroApp extends StatelessWidget {
  const AstroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: Locales(),
      locale: Get.deviceLocale,
      fallbackLocale: const Locale('ru', 'RU'),
      title: 'Astro App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: Routes.getRouterPages(),
      initialRoute: Routes.onboarding,
      initialBinding: AppBindings(),
    );
  }
}
