import 'package:Skill4Cash/src/views/service_provider/settings/index.dart';
import 'package:flutter/material.dart';
import 'package:statusbarz/statusbarz.dart';

import 'src/views/cutomer/settings_customer/settings_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StatusbarzCapturer(
      child: MaterialApp(
        title: 'Skill4Cash',
        navigatorObservers: [Statusbarz.instance.observer],
        theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: 'Gilroy',
          // This makes the visual density adapt to the platform that you run
          // the app on. For desktop platforms, the controls will be smaller and
          // closer together (more dense) than on mobile platforms.
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: ServiceProviderSettingScreen(),
      ),
    );
  }
}
