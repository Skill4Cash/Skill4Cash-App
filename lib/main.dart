import 'package:Skill4Cash/src/core/utilities/app_colors.dart';
import 'package:Skill4Cash/src/features/dashboard/views/all_services_screen.dart';
import 'package:Skill4Cash/src/features/dashboard/views/dashboard_screen.dart';
import 'package:Skill4Cash/src/features/dashboard/views/service_providers_arround_screen.dart';
import 'package:Skill4Cash/src/features/home/views/home_screen.dart';
import 'package:Skill4Cash/src/features/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Skill4Cash',
      // initialRoute: "/onboardingScreen",//splash screen should be created and changed to this route
      home: OnboardingScreen(),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (routeSettings) => MaterialPageRoute(
        settings: routeSettings,
        builder: (context) {
          switch (routeSettings.name) {
            case OnboardingScreen.routeName:
              return OnboardingScreen();
            case HomeScreen.routeName:
              return HomeScreen();
            case DashboardScreen.routeName:
              return DashboardScreen();
            case AllServicesScreen.routeName:
              return AllServicesScreen();
            case ServiceProvidersAroundScreen.routeName:
              return ServiceProvidersAroundScreen();
          }

          throw FlutterError("Unknown Route: ${routeSettings.name}");
        },
      ),
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.light(
          secondary: kSecondaryColor,
          primary: kPrimaryColor,
        ),
      ),
    );
  }
}
