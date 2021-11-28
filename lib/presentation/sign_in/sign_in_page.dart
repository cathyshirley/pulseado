import 'package:pulseado/application/auth/signin_form/signin_form_bloc.dart';
import 'package:pulseado/injectable.dart';
import 'package:pulseado/presentation/sign_in/widgets/sign_in_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<SigninFormBloc>(),
        child: SignInForm(),
      ),
    );
  }
}
