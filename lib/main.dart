import 'package:countries/core/utils/app_routes.dart';
import 'package:countries/features/countries/views/home_screen/home_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: AppRoutes.homeScreenRoute,
        routes: {AppRoutes.homeScreenRoute: (context) => const HomeScreen()},
      ),
    );
  }
}
