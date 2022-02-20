import 'package:Skill4Cash/src/features/customers/dashboard/views/all_services_screen.dart';
import 'package:Skill4Cash/src/features/customers/dashboard/views/dashboard_screen.dart';
import 'package:Skill4Cash/src/features/customers/dashboard/views/service_providers_arround_screen.dart';
import 'package:Skill4Cash/src/features/customers/home/views/home_screen.dart';
import 'package:Skill4Cash/src/features/customers/messages/chat_screen.dart';
import 'package:Skill4Cash/src/features/customers/onboarding/onboarding_screen.dart';
import 'package:Skill4Cash/src/features/service_provider/settings/edit_email.dart';
import 'package:Skill4Cash/src/features/service_provider/settings/edit_phone.dart';
import 'package:Skill4Cash/src/features/service_provider/settings/index.dart';
import 'package:Skill4Cash/src/features/service_provider/settings/verify_account.dart';
import 'package:Skill4Cash/src/features/service_provider/verify_account/index.dart';
import 'package:Skill4Cash/src/features/service_provider/verify_account/service_information.dart';
import 'package:Skill4Cash/src/features/service_provider/verify_account/verify_account.dart';
import 'package:Skill4Cash/src/features/splash/splash.dart';
import 'package:Skill4Cash/src/features/customers/messages/index.dart';
import 'package:flutter/material.dart';

class CustomerRoutes{
  static const String splashRoute = "/splashScreen";
  static const String onBoardingRoute = "/onboardingScreen";
  static const String allServicesRoute = "/allServicesScreen";
  static const String dashboardScreenRoute = "/dashboardScreen";
  static const String serviceProvidersAroundScreenRoute = "/serviceProvidersAroundScreen";
  static const String customerHomeRoute = "/customerHomeScreen";
  static const String messagesRoute  = "/messageScreen";
  static const String chatRoute  = "/chatScreen";
}

class ServiceProviderRoutes{
  static const String settingScreenRoute  = "/settingScreen";
  static const String editEmailRoute  = "/editEmailScreen";
  static const String editPhoneRoute  = "/editPhoneScreen";
  static const String verifyAccountRoute  = "/verifyAccountScreen";
  static const String verifyDashboardRoute  = "/verifyDashboardScreen";
  static const String verifyAccountSPRoute  = "/verifyAccountSP";
  static const String serviceInfoRoute  = "/serviceInfoScreen";
}



class RouteGenerator{
  static Route<dynamic> getRoute (RouteSettings routeSettings){
    switch (routeSettings.name){
      //CUSTOMER SIDE ROUTER
      case CustomerRoutes.splashRoute :
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case CustomerRoutes.onBoardingRoute :
        return MaterialPageRoute(builder: (_) => OnboardingScreen());
      case CustomerRoutes.allServicesRoute :
        return MaterialPageRoute(builder: (_) => const AllServicesScreen());
      case CustomerRoutes.dashboardScreenRoute :
        return MaterialPageRoute(builder: (_) => const DashboardScreen());
      case CustomerRoutes.serviceProvidersAroundScreenRoute :
        return MaterialPageRoute(builder: (_) => const ServiceProvidersAroundScreen());
      case CustomerRoutes.customerHomeRoute :
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case CustomerRoutes.messagesRoute :
        return MaterialPageRoute(builder: (_) => const Messages());
      case CustomerRoutes.chatRoute :
        return MaterialPageRoute(builder: (_) => const ChatScreen());

      //SERVICE PROVIDER ROUTER
      case ServiceProviderRoutes.settingScreenRoute :
        return MaterialPageRoute(builder: (_) => const SettingScreenSp());
      case ServiceProviderRoutes.editEmailRoute :
        return MaterialPageRoute(builder: (_) => const EditEmailSp());
      case ServiceProviderRoutes.editPhoneRoute :
        return MaterialPageRoute(builder: (_) => const EditPhoneNumberSp());
      case ServiceProviderRoutes.verifyAccountRoute :
        return MaterialPageRoute(builder: (_) => const VerifyAccountSp());
      case ServiceProviderRoutes.verifyDashboardRoute :
        return MaterialPageRoute(builder: (_) => const VerifyDashboardSP());
      case ServiceProviderRoutes.verifyAccountSPRoute :
        return MaterialPageRoute(builder: (_) => const VerifyAccountScreenSP());
      case ServiceProviderRoutes.serviceInfoRoute :
        return MaterialPageRoute(builder: (_) => const ServiceInformationScreen());
      default :
        return unDefinedRoute();
    }
  }

   static Route<dynamic> unDefinedRoute(){
    return MaterialPageRoute(builder: (ctx) => const Scaffold(
      body: Center(
        child: Text("This route is not found!"),
      ),
    ));
  }
}