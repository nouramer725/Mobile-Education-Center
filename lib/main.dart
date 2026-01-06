import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile_education_center/home/home_screen.dart';
import 'package:mobile_education_center/utils/app_routes.dart';
import 'package:mobile_education_center/utils/app_theme.dart';
import 'package:mobile_education_center/utils/size_config.dart';

import 'home/tabs/container1_press.dart';
import 'home/tabs/container2_press.dart';
import 'home/tabs/container3_press.dart';
import 'home/tabs/container4_press.dart';

// void main() {
//   // runApp(
//   //   // ChangeNotifierProvider(
//   //   //   create: (context) => MostRecentProvider(),
//   //   //   child: const MyApp(),
//   //   // ),
//   // );
//   runApp(const MyApp());
// }
void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // themeMode: ThemeMode.dark,
      theme: AppTheme.appTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.homeScreenName,
      builder: (context, child) {
        SizeConfig.init(context);
        return Directionality(textDirection: TextDirection.rtl, child: child!);
      },
      routes: {
        AppRoutes.homeScreenName: (context) => HomeScreen(),
        AppRoutes.container1Press: (context) => Container1Press(),
        AppRoutes.container2Press: (context) => Container2Press(),
        AppRoutes.container3Press: (context) => Container3Press(),
        AppRoutes.container4Press: (context) => Container4Press(),
        // AppRoutes.onBoardingScreenName: (context) => OnboardingScreen(),
      },
    );
  }
}
