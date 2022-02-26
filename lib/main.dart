import 'package:Skill4Cash/src/core/routes/route_manager.dart';
import 'package:Skill4Cash/src/core/utilities/app_colors.dart';
import 'package:Skill4Cash/src/features/customerAuth/views/customer_login.dart';
import 'package:Skill4Cash/src/features/customerAuth/views/customer_signup.dart';
import 'package:Skill4Cash/src/features/dashboard/views/all_services_screen.dart';
import 'package:Skill4Cash/src/features/dashboard/views/dashboard_screen.dart';
import 'package:Skill4Cash/src/features/dashboard/views/service_providers_arround_screen.dart';
import 'package:Skill4Cash/src/features/home/views/home_screen.dart';
import 'package:Skill4Cash/src/features/onboarding/onboarding_screen.dart';
import 'package:Skill4Cash/src/features/serviceProviderAuth/views/service_login.dart';
import 'package:Skill4Cash/src/features/serviceProviderAuth/views/service_signup.dart';
=======
>>>>>>> 42ab2e144fbbe8eba268b9748f9585acb6f10f14
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
      initialRoute: CustomerRoutes.customerHomeRoute,//splash screen has been added, this line can replaced later
      debugShowCheckedModeBanner: false,
<<<<<<< HEAD
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
            case CustomerLogin.routeName:
              return CustomerLogin();
            case ServiceSignUp.routeName:
              return ServiceSignUp();
            case ServiceLogin.routeName:
              return ServiceLogin();
            case CustomerSignUp.routeName:
              return CustomerSignUp();
          }

          throw FlutterError("Unknown Route: ${routeSettings.name}");
        },
      ),
=======
      onGenerateRoute: RouteGenerator.getRoute,
>>>>>>> 42ab2e144fbbe8eba268b9748f9585acb6f10f14
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
