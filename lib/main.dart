import 'package:flutter/material.dart';
import 'package:astro_app/presentation/_export.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: Locales(),
      locale: Get.deviceLocale,
      fallbackLocale: const Locale('en', 'US'),
      title: 'Astro App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: Routes.getRouterPages(),
      initialRoute: Routes.splash,
    );
  }
}
