import 'package:pulseado/application/auth/sign_up_form/password_form/password_form_bloc.dart';
import 'package:pulseado/domain/auth/value_objects.dart';
import 'package:pulseado/injectable.dart';
import 'package:pulseado/presentation/routes/routes.dart';
import 'package:pulseado/presentation/sign_in/widgets/error_dialog.dart';
import 'package:pulseado/presentation/sign_up/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PasswordForm extends StatelessWidget {
  final FormDTO formDTO;
  const PasswordForm({required this.formDTO});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PasswordFormBloc>(),
      child: BlocConsumer<PasswordFormBloc, PasswordFormState>(
        listener: (context, state) {
          state.authResponse.fold(
            () => null,
            (either) {
              either.fold(
                  (authFailure) => authFailure.maybeMap(
                        emailAlreadyExist: (_) => showDialog(
                            context: context,
                            builder: (BuildContext context) => errorDialog(
                                context,
                                'Email already exist',
                                'An account with this email already exist, try logging in.')),
                        usernameAlreadyExist: (_) => showDialog(
                            context: context,
                            builder: (BuildContext context) => errorDialog(
                                context,
                                'Username already exist',
                                'An account with this email already exist, please enter a diffrent username.')),
                        serverError: (_) => showDialog(
                            context: context,
                            builder: (BuildContext context) => errorDialog(
                                context,
                                'Network error',
                                'We have encountered an network issue. Try again')),
                        unknownErrorOccurred: (_) => showDialog(
                            context: context,
                            builder: (BuildContext context) => errorDialog(
                                context,
                                'Unknown error',
                                'An unknown error has occured. Try again')),
                        orElse: () => null,
                      ), (unit) {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    Routes.navigationBar, (route) => false);
                Navigator.of(context).pushNamed(Routes.profilePictureForm,
                    arguments: formDTO.fullName);
              });
            },
          );
        },
        builder: (context, state) {
          final bool isSubmitting = state.isSubmitting;
          final autoValidateMode = state.showErrorMessages
              ? AutovalidateMode.always
              : AutovalidateMode.disabled;
          return Scaffold(
            body: Form(
              autovalidateMode: autoValidateMode,
              child: Center(
                child: SafeArea(
                  child: SizedBox(
                    width: 350.0,
                    child: Column(
                      children: [
                        const SizedBox(height: 50.0),
                        const Text(
                          'Enter password',
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                        const SizedBox(height: 50.0),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'password',
                            border: OutlineInputBorder(),
                          ),
                          autocorrect: false,
                          obscureText: true,
                          onChanged: (value) {
                            context.read<PasswordFormBloc>().add(
                                  PasswordFormEvent.passwordChanged(
                                    passwordString: value,
                                  ),
                                );
                            formDTO.password = state.password;
                          },
                          validator: (_) {
                            return context
                                .read<PasswordFormBloc>()
                                .state
                                .password
                                .value
                                .fold(
                                    (failure) => failure.maybeMap(
                                        invalidPassword: (_) =>
                                            'Invalid password',
                                        orElse: () => null),
                                    (r) => null);
                          },
                        ),
                        const SizedBox(height: 15.0),
                        SizedBox(
                          width: double.infinity,
                          height: 50.0,
                          child: ElevatedButton(
                            onPressed: isSubmitting
                                ? null
                                : () {
                                    formDTO.password = context
                                        .read<PasswordFormBloc>()
                                        .state
                                        .password;
                                    context.read<PasswordFormBloc>().add(
                                        PasswordFormEvent.formSubmitted(
                                            formDTO: formDTO));
                                  },
                            child: isSubmitting
                                ? const SizedBox(
                                    height: 20,
                                    width: 20,
                                    child: CircularProgressIndicator(
                                      strokeWidth: 2.0,
                                      valueColor:
                                          AlwaysStoppedAnimation(Colors.white),
                                    ),
                                  )
                                : const Text(
                                    'Next',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
