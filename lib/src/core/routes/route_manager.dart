import 'package:Skill4Cash/src/features/customerAuth/views/verify_account.dart';
import 'package:Skill4Cash/src/features/customerAuth/views/verify_email.dart';
import 'package:Skill4Cash/src/features/customers/dashboard/views/all_services_screen.dart';
import 'package:Skill4Cash/src/features/customers/dashboard/views/dashboard_screen.dart';
import 'package:Skill4Cash/src/features/customers/dashboard/views/service_providers_arround_screen.dart';
import 'package:Skill4Cash/src/features/customers/home/views/home_screen.dart';
import 'package:Skill4Cash/src/features/customers/messages/chat_screen.dart';
import 'package:Skill4Cash/src/features/customers/messages/index.dart';

import 'package:Skill4Cash/src/features/customers/onboarding/onboarding_screen.dart';
import 'package:Skill4Cash/src/features/customers/settings_customer/privacy_policy_screen.dart';
import 'package:Skill4Cash/src/features/customers/settings_customer/settings_screen.dart';
import 'package:Skill4Cash/src/features/service_provider/dashboard/index.dart';
import 'package:Skill4Cash/src/features/service_provider/dashboard/keyword.dart';
import 'package:Skill4Cash/src/features/service_provider/dashboard/ratings.dart';
import 'package:Skill4Cash/src/features/service_provider/schedule/create_schedule.dart';
import 'package:Skill4Cash/src/features/service_provider/schedule/pick_date.dart';
import 'package:Skill4Cash/src/features/service_provider/schedule/schedules.dart';
import 'package:Skill4Cash/src/features/service_provider/settings/edit_email.dart';
import 'package:Skill4Cash/src/features/service_provider/settings/edit_phone.dart';
import 'package:Skill4Cash/src/features/service_provider/settings/index.dart';
import 'package:Skill4Cash/src/features/service_provider/settings/s4c_pay_scren.dart';
import 'package:Skill4Cash/src/features/service_provider/settings/s4c_subscription.dart';
import 'package:Skill4Cash/src/features/service_provider/settings/verify_account.dart';
import 'package:Skill4Cash/src/features/service_provider/sp_page_view.dart';
import 'package:Skill4Cash/src/features/service_provider/verify_account/index.dart';
import 'package:Skill4Cash/src/features/service_provider/verify_account/service_information.dart';
import 'package:Skill4Cash/src/features/service_provider/verify_account/verify_account.dart';
import 'package:Skill4Cash/src/features/splash/splash.dart';
import 'package:flutter/material.dart';

import '../../features/customerAuth/views/customer_login.dart';
import '../../features/customerAuth/views/customer_signup.dart';
import '../../features/customers/settings_customer/terms_and_condition_screen.dart';
import '../../features/serviceProviderAuth/views/service_login.dart';
import '../../features/serviceProviderAuth/views/service_signup.dart';

class CustomerRoutes {
  static const String splashRoute = "/splashScreen";
  static const String onBoardingRoute = "/onboardingScreen";
  static const String allServicesRoute = "/allServicesScreen";
  static const String dashboardScreenRoute = "/dashboardScreen";
  static const String serviceProvidersAroundScreenRoute =
      "/serviceProvidersAroundScreen";
  static const String customerHomeRoute = "/customerHomeScreen";
  static const String messagesRoute = "/messageScreen";
  static const String chatRoute = "/chatScreen";
  static const customerLoginRoute = "/customerLogin";
  static const customerSignUpRoute = "/customerSignUp";
  static const privacyPolicyRoute = "/privacyPolicy=";
  static const termsAndConditionRoute = "/termsAndCondition";
  static const verifyEmail = "/verifyEmail";
  static const openEmail = "/openEmail";
  static const customerSettingScreen = "/customerSettingScreen";
}

class ServiceProviderRoutes {
  static const String settingScreenRoute = "/settingScreen";
  static const String spPageViewRoute = "/spPageViewScreen";
  static const String editEmailRoute = "/editEmailScreen";
  static const String editPhoneRoute = "/editPhoneScreen";
  static const String verifyAccountRoute = "/verifyAccountScreen";
  static const String verifyDashboardRoute = "/verifyDashboardScreen";
  static const String verifyAccountSPRoute = "/verifyAccountSP";
  static const String serviceInfoRoute = "/serviceInfoScreen";
  static const serviceLoginRoute = "/serviceLogin";
  static const serviceSignUpRoute = "/serviceSignUp";
  static const s4cSubRoute = "/s4cSubPlan";
  static const s4cSubPayRoute = "/s4cSubPay";
  static const spDashboardRoute = "/spDashboardScreen";
  static const spKeywordRoute = "/spKeywordScreen";
  static const spRatingRoute = "/spRatingScreen";
  static const spScheduleRoute = "/spScheduleScreen";
  static const spSchedulePickDate = "/spSchedulePickDate";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      //CUSTOMER SIDE ROUTER
      case CustomerRoutes.splashRoute:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case CustomerRoutes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => OnboardingScreen());
      case CustomerRoutes.allServicesRoute:
        return MaterialPageRoute(builder: (_) => const AllServicesScreen());
      case CustomerRoutes.dashboardScreenRoute:
        return MaterialPageRoute(builder: (_) => const DashboardScreen());
      case CustomerRoutes.serviceProvidersAroundScreenRoute:
        return MaterialPageRoute(
            builder: (_) => const ServiceProvidersAroundScreen());
      case CustomerRoutes.customerHomeRoute:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case CustomerRoutes.messagesRoute:
        return MaterialPageRoute(builder: (_) => const Messages());
      case CustomerRoutes.chatRoute:
        return MaterialPageRoute(builder: (_) => const ChatScreen());
      case CustomerRoutes.privacyPolicyRoute:
        return MaterialPageRoute(builder: (_) => const PrivacyPolicyScreen());
      case CustomerRoutes.termsAndConditionRoute:
        return MaterialPageRoute(
            builder: (_) => const TermsAndConditionScreen());
      case CustomerRoutes.verifyEmail:
        return MaterialPageRoute(builder: (_) => const VerifyAccount());
      case CustomerRoutes.openEmail:
        return MaterialPageRoute(builder: (_) => const VerifyEmail());
      case CustomerRoutes.customerSettingScreen:
        return MaterialPageRoute(builder: (_) => SettingScreen());
      case CustomerRoutes.customerLoginRoute:
        return MaterialPageRoute(builder: (_) => const CustomerLogin());

      //SERVICE PROVIDER ROUTER
      case ServiceProviderRoutes.spPageViewRoute:
        return MaterialPageRoute(builder: (_) => const SpPageView());
      case ServiceProviderRoutes.settingScreenRoute:
        return MaterialPageRoute(builder: (_) => const SettingScreenSp());
      case ServiceProviderRoutes.editEmailRoute:
        return MaterialPageRoute(builder: (_) => const EditEmailSp());
      case ServiceProviderRoutes.editPhoneRoute:
        return MaterialPageRoute(builder: (_) => const EditPhoneNumberSp());
      case ServiceProviderRoutes.verifyAccountRoute:
        return MaterialPageRoute(builder: (_) => const VerifyAccountSp());
      case ServiceProviderRoutes.verifyDashboardRoute:
        return MaterialPageRoute(builder: (_) => const VerifyDashboardSP());
      case ServiceProviderRoutes.verifyAccountSPRoute:
        return MaterialPageRoute(builder: (_) => const VerifyAccountScreenSP());
      case ServiceProviderRoutes.serviceInfoRoute:
        return MaterialPageRoute(
            builder: (_) => const ServiceInformationScreen());
      case ServiceProviderRoutes.s4cSubRoute:
        return MaterialPageRoute(builder: (_) => const S4CSubPlanScreen());
      case ServiceProviderRoutes.s4cSubPayRoute:
        return MaterialPageRoute(builder: (_) => const S4CSubPayScreen());
      case ServiceProviderRoutes.spDashboardRoute:
        return MaterialPageRoute(builder: (_) => const SpDashboard());
      case ServiceProviderRoutes.spKeywordRoute:
        return MaterialPageRoute(builder: (_) => const KeywordScreen());
      case ServiceProviderRoutes.spRatingRoute:
        return MaterialPageRoute(builder: (_) => const RatingScreen());
      case ServiceProviderRoutes.spScheduleRoute:
        return MaterialPageRoute(builder: (_) => ScheduleScreen());
      case ServiceProviderRoutes.spSchedulePickDate:
        return MaterialPageRoute(builder: (_) => PickDate());
      case ServiceProviderRoutes.spDashboardRoute:
        return MaterialPageRoute(builder: (_) => SpDashboard());

      case CustomerRoutes.customerLoginRoute:
        return MaterialPageRoute(builder: (_) => CustomerLogin());
      case ServiceProviderRoutes.serviceSignUpRoute:
        return MaterialPageRoute(builder: (_) => ServiceSignUp());
      case ServiceProviderRoutes.serviceLoginRoute:
        return MaterialPageRoute(builder: (_) => ServiceLogin());
      case CustomerRoutes.customerSignUpRoute:
        return MaterialPageRoute(builder: (_) => CustomerSignUp());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (ctx) => const Scaffold(
              body: Center(
                child: Text("This route is not found!"),
              ),
            ));
  }
}
