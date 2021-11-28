import 'package:pulseado/application/auth/sign_up_form/email_form/email_form_bloc.dart';
import 'package:pulseado/application/auth/sign_up_form/username_form/username_form_bloc.dart';
import 'package:pulseado/injectable.dart';
import 'package:pulseado/presentation/routes/routes.dart';
import 'package:pulseado/presentation/sign_in/widgets/error_dialog.dart';
import 'package:pulseado/presentation/sign_up/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UsernameForm extends StatelessWidget {
  final FormDTO formDTO = FormDTO();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UsernameFormBloc, UsernameFormState>(
      listener: (context, state) {
        state.newUserResponse.fold(
          () => null,
          (either) {
            either.fold(
              (authFailure) => authFailure.maybeMap(
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
              ),
              (r) {
                if (r) {
                  formDTO.username = state.username;
                  Navigator.of(context).pushNamed(
                    Routes.emailForm,
                    arguments: formDTO,
                  );
                }
              },
            );
          },
        );
      },
      builder: (context, state) {
        final bool isSubmitting = state.isSubmitting;
        // final newState =
        final autoValidateMode =
            state.usernameNotAvailable || state.showErrorMessages
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
                        'Choose an username',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                      const SizedBox(height: 50.0),
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Username',
                          border: OutlineInputBorder(),
                        ),
                        autocorrect: false,
                        onChanged: (value) {
                          context
                              .read<UsernameFormBloc>()
                              .add(UsernameFormEvent.usernameChanged(value));
                        },
                        validator: (_) {
                          return context
                                      .read<UsernameFormBloc>()
                                      .state
                                      .newUserResponse
                                      .fold(
                                          () => null,
                                          (a) => a.fold(
                                                (l) => null,
                                                (r) => r ? null : '',
                                              )) !=
                                  null
                              ? 'Username already exist'
                              : context
                                  .read<UsernameFormBloc>()
                                  .state
                                  .username
                                  .value
                                  .fold(
                                      (failure) => failure.maybeMap(
                                          invalidUsername: (_) =>
                                              'Invalid username',
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
                                  context.read<UsernameFormBloc>().add(
                                      const UsernameFormEvent.submitForm());
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
    );
  }
}
