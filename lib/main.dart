import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:statusbarz/statusbarz.dart';
import 'src/views/screens/onboarding/onboarding_screen.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.white,
      statusBarBrightness: Brightness.dark));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StatusbarzCapturer(
      child: MaterialApp(
        title: 'Skill4Cash Demo',
        navigatorObservers: [Statusbarz.instance.observer],
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Gilroy',
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: OnboardingScreen()
      ),
    );
  }
}