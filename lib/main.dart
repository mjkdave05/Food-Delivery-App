import 'package:flutter/material.dart';
import 'package:food_delivery/screens/dessertScreen.dart';

import './const/colors.dart';
import './screens/forgotPasswordScreen.dart';
import './screens/homeScreen.dart';
import './screens/introScreen.dart';
import './screens/landingScreen.dart';
import './screens/loginScreen.dart';
import './screens/menuScreen.dart';
import './screens/moreScreen.dart';
import './screens/newPasswordScreen.dart';
import './screens/offerScreen.dart';
import './screens/profileScreen.dart';
import './screens/sentOTPScreen.dart';
import './screens/signUpScreen.dart';
import './screens/splashScreen.dart';
import 'package:food_delivery/screens/dessertScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Metropolis",
        primarySwatch: Colors.red,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
                AppColor.orange
            ),
            shape: MaterialStateProperty.all(
              const StadiumBorder(),
            ),
            elevation: MaterialStateProperty.all(0),
          ),),
        textButtonTheme: TextButtonThemeData(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(
                AppColor.orange,
              ),
            ),
        ),
        textTheme: const TextTheme(
          headline3:TextStyle(
              color: AppColor.primary,
              fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          headline4: TextStyle(
            color: AppColor.secondary,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          headline5: TextStyle(
              color: AppColor.primary,
              fontWeight: FontWeight.normal,
              fontSize: 25,
          ),
          headline6: TextStyle(
              color: AppColor.primary,
              fontSize: 25,
          ),
            bodyText2: TextStyle(
                color: AppColor.secondary,
            ),
        ),
      ),
      home: const SplashScreen(),
      routes: {
        LandingScreen.routeName: (context) => const LandingScreen(),
        LoginScreen.routeName: (context) => const LoginScreen(),
        SignUpScreen.routeName: (context) => const SignUpScreen(),
        ForgotPasswordScreen.routeName: (context) => const ForgotPasswordScreen(),
        SendOTPScreen.routeName: (context) => const SendOTPScreen(),
        NewPasswordScreen.routeName: (context) => const NewPasswordScreen(),
        IntroScreen.routeName: (context) => IntroScreen(),
        HomeScreen.routeName: (context) => const HomeScreen(),
        MenuScreen.routeName: (context) => const MenuScreen(),
        OfferScreen.routeName: (context) => const OfferScreen(),
        ProfileScreen.routeName: (context) => const ProfileScreen(),
        MoreScreen.routeName: (context) => const MoreScreen(),
        DessertScreen.routeName: (context) => const DessertScreen(),
      },
    );
  }
}

