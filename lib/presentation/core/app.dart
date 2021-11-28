import 'package:pulseado/application/auth/auth_bloc.dart';
import 'package:pulseado/injectable.dart';
import 'package:pulseado/presentation/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  final darkTheme = ThemeData(
    primarySwatch: Colors.blue,
    primaryColor: Colors.black,
    scaffoldBackgroundColor: Colors.black,
    brightness: Brightness.dark,
    // backgroundColor: const Color(0xFF212121),
    accentColor: Colors.white,
    accentIconTheme: const IconThemeData(color: Colors.black),
    dividerColor: Colors.grey,
  );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        WidgetsBinding.instance!.focusManager.primaryFocus?.unfocus();
      },
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (_) =>
                  getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested())),
        ],
        child: MaterialApp(
          title: 'Avior App',
          darkTheme: darkTheme,
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.splashScreen,
          routes: Routes.routes,
          // home: SignInPage(),
        ),
      ),
    );
  }
}
