import 'package:pulseado/domain/auth/value_objects.dart';
import 'package:pulseado/presentation/core/splash_page.dart';
import 'package:pulseado/presentation/home_page/home_page.dart';
import 'package:pulseado/presentation/navigation_bar/navigation_bar.dart';
import 'package:pulseado/presentation/sign_in/sign_in_page.dart';
import 'package:pulseado/presentation/sign_up/pages/email_form.dart';
import 'package:pulseado/presentation/sign_up/pages/password_form.dart';
import 'package:pulseado/presentation/sign_up/pages/profile_picture_form.dart';
import 'package:pulseado/presentation/sign_up/pages/username_form.dart';
import 'package:pulseado/presentation/sign_up/sign_up_page.dart';
import 'package:flutter/material.dart';

class Routes {
  static String splashScreen = '/';
  static String signinPage = '/signinPage';
  static String signupPage = '/signupPage';
  static String usernameForm = '/usernameForm';
  static String emailForm = '/emailForm';
  static String passwordForm = '/passwordForm';
  static String profilePictureForm = '/profilePictureForm';
  static String navigationBar = '/navigationBar';
  static String homePage = '/homePage';

  static Map<String, Widget Function(BuildContext)> routes = {
    splashScreen: (context) => SplashScreen(),
    signinPage: (context) => SignInPage(),
    signupPage: (context) => SignUpPage(),
    usernameForm: (context) => UsernameForm(),
    emailForm: (context) => EmailForm(
        formDTO: ModalRoute.of(context)!.settings.arguments as FormDTO),
    passwordForm: (context) => PasswordForm(
        formDTO: ModalRoute.of(context)!.settings.arguments as FormDTO),
    profilePictureForm: (context) => ProfilePictureForm(
          name: ModalRoute.of(context)!.settings.arguments as FullName,
        ),
    navigationBar: (context) => NavigationBar(),
    homePage: (context) => HomePage(),
  };
}
