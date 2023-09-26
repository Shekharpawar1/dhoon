import 'package:dhoondle/src/features/screens/add_property.dart';
import 'package:dhoondle/src/features/screens/add_property_screen.dart';
import 'package:dhoondle/src/features/screens/add_services.dart';
import 'package:dhoondle/src/features/screens/become_service_provider.dart';
import 'package:dhoondle/src/features/screens/bottomNavigation.dart';
import 'package:dhoondle/src/features/screens/home_screen.dart';
import 'package:dhoondle/src/features/screens/plumber_screen.dart';
import 'package:dhoondle/src/features/screens/profile_screen.dart';
import 'package:dhoondle/src/features/screens/property_details_screen.dart';
import 'package:dhoondle/src/features/screens/property_screen.dart';
import 'package:dhoondle/src/features/screens/service_screen.dart';
import 'package:dhoondle/src/features/screens/services_tabbar.dart';
import 'package:dhoondle/src/features/screens/setting%202%20(1).dart';
import 'package:dhoondle/src/features/screens/setting3.dart';
import 'package:dhoondle/src/features/screens/settings.dart';
import 'package:dhoondle/src/features/screens/splash_screen.dart';
import 'package:dhoondle/src/features/screens/tabbar_screen.dart';
import 'package:dhoondle/src/registration/log_in_screen.dart';
import 'package:dhoondle/src/registration/otp_screen.dart';
import 'package:dhoondle/src/registration/signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DHOONDLE APP',
      initialRoute: '/profile',
      getPages: [
        GetPage(name: '/landing', page: () => SplashScreen()),
        GetPage(name: '/signup', page: () => Signup()),
        GetPage(name: '/login', page: () => LogInScreen()),
        GetPage(name: '/otp', page: () => OtpScreen()),
        GetPage(name: '/bottom', page: () => BottomNaigation()),
        GetPage(name: '/becomeservice', page: () => BecomeServiceProvider()),
        GetPage(name: '/service', page: () => ServicesTabbar()),
        GetPage(name: '/home', page: () => HomeScreen()),
        GetPage(name: '/profile', page: () => ProfileScreen()),
        GetPage(name: '/servicescreen', page: () => ServiceScreen()),
        GetPage(name: '/propertydetail', page: () => PropertyDetailsScreen()),
        GetPage(name: '/addproperty', page: () => AddPropertyScreen()),
        GetPage(name: '/addpropertynew', page: () => AddPropertynew()),
        GetPage(name: '/setting3', page: () => Setting3()),
        GetPage(name: '/setting2', page: () => Setting2()),
        GetPage(name: '/addservice', page: () => AddServiceScreen()),
        GetPage(name: '/plumber', page: () => PlumberScreen()),
        GetPage(name: '/propertyscreen', page: () => PropertyScreen()),
      ],
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: ProfileScreen(),
    );
  }
}
