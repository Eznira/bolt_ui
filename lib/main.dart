import 'package:bolt_ui/screens/about/about.dart';
import 'package:bolt_ui/screens/home_screen.dart';
import 'package:bolt_ui/screens/my_rides/my_trips.dart';
import 'package:bolt_ui/screens/payment/payment.dart';
import 'package:bolt_ui/screens/profile/profile.dart';
import 'package:bolt_ui/screens/promotions/promotions.dart';
import 'package:bolt_ui/screens/support/support.dart';
import 'package:bolt_ui/screens/work_profile/work_profile.dart';
import 'package:bolt_ui/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'themes/theme_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (BuildContext context) => ThemeProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize:
          const Size(375, 812), // Your reference screen size (width, height)
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          darkTheme: darkMode,
          debugShowCheckedModeBanner: false,
          theme: Provider.of<ThemeProvider>(context).currentTheme,
          home: const HomeScreen(),
          routes: {
            "/profile": (context) => const Profile(),
            "/payment": (context) => const Payment(),
            "/promotions": (context) => const Promotions(),
            "/my_rides": (context) => const MyTrips(),
            "/work_profile": (context) => const WorkProfile(),
            "/support": (context) => const Support(),
            "/about": (context) => const About(),
          },
        );
      },
    );
  }
}
