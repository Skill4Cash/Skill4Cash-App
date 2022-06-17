import 'package:Skill4Cash/src/core/routes/route_manager.dart';
import 'package:Skill4Cash/src/core/utilities/app_colors.dart';
import 'package:Skill4Cash/src/core/utilities/constants.dart';
<<<<<<< HEAD
import 'package:Skill4Cash/src/features/service_provider/dashboard/index.dart';
import 'package:Skill4Cash/src/features/service_provider/dashboard/keyword.dart';
=======
import 'package:Skill4Cash/src/service/service_locator.dart';
>>>>>>> 15e787b8ed304ccc59c06a12655159f211ac0ad6
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Skill4Cash',
      // home: SpDashboard(),
      initialRoute: CustomerRoutes
          .splashRoute, //splash screen has been added, this line can replaced later

      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.getRoute,
      initialBinding: ServicesBinding(),
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
