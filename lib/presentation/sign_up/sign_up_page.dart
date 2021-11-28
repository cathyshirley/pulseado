import 'package:pulseado/application/auth/sign_up_form/username_form/username_form_bloc.dart';
import 'package:pulseado/domain/auth/value_objects.dart';
import 'package:pulseado/injectable.dart';
import 'package:pulseado/presentation/sign_up/pages/username_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<UsernameFormBloc>(),
      child: UsernameForm(),
    );
  }
}

class FormDTO {
  late Username username;
  late EmailAddress emailAddress;
  late FullName fullName;
  late Password password;

  bool isValid() {
    return true;
  }
}
