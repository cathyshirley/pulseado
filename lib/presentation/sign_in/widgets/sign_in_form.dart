import 'package:another_flushbar/flushbar_helper.dart';
import 'package:pulseado/application/auth/auth_bloc.dart';
import 'package:pulseado/application/auth/signin_form/signin_form_bloc.dart';
import 'package:pulseado/presentation/routes/routes.dart';
import 'package:pulseado/presentation/sign_in/widgets/error_dialog.dart';
import 'package:pulseado/presentation/sign_up/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SigninFormBloc, SigninFormState>(
      listener: (context, state) {
        state.authResponse.fold(() => null, (either) {
          either.fold(
              (authFailure) => authFailure.maybeMap(
                    serverError: (_) => showDialog(
                        context: context,
                        builder: (BuildContext context) => errorDialog(
                            context,
                            'Network error',
                            'We have encountered an network issue. Try again')),
                    invalidCredentials: (_) => showDialog(
                        context: context,
                        builder: (BuildContext context) => errorDialog(
                            context,
                            'Invalid credentials',
                            'The email and password entered does not match')),
                    unknownErrorOccurred: (_) => showDialog(
                        context: context,
                        builder: (BuildContext context) => errorDialog(
                            context,
                            'Unknown error',
                            'An unknown error has occured. Try again')),
                    orElse: () => '',
                  ),
              (r) => Navigator.of(context)
                  .pushReplacementNamed(Routes.navigationBar));
        });
      },
      builder: (context, state) {
        final autoValidateMode =
            context.read<SigninFormBloc>().state.showErrorMessages
                ? AutovalidateMode.always
                : AutovalidateMode.disabled;
        final isSubmitting = state.isSubmitting;
        return Form(
          autovalidateMode: autoValidateMode,
          child: Center(
            child: SizedBox(
              width: 350.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(flex: 4),
                  const Text(
                    'PULSEADO',
                    style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w200,
                        letterSpacing: 7.0),
                  ),
                  const Spacer(),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                    ),
                    autocorrect: false,
                    onChanged: (value) {
                      context
                          .read<SigninFormBloc>()
                          .add(SigninFormEvent.emailChanged(value));
                    },
                    validator: (_) {
                      return context
                          .read<SigninFormBloc>()
                          .state
                          .emailAddress
                          .value
                          .fold(
                              (l) => l.maybeMap(
                                  invalidEmail: (_) => "Invalid email",
                                  orElse: () => null),
                              (r) => null);
                    },
                  ),
                  const SizedBox(height: 15.0),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                    ),
                    autocorrect: false,
                    obscureText: true,
                    onChanged: (value) {
                      context
                          .read<SigninFormBloc>()
                          .add(SigninFormEvent.passwordChanged(value));
                    },
                    validator: (_) {
                      return context
                          .read<SigninFormBloc>()
                          .state
                          .password
                          .value
                          .fold(
                              (l) => l.maybeMap(
                                  invalidPassword: (_) => "Invalid password",
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
                              context.read<SigninFormBloc>().add(
                                  const SigninFormEvent
                                      .signinWithEmailAndPassword());
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
                              'Login',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                    ),
                  ),
                  const Spacer(flex: 4),
                  const Divider(
                    thickness: 0.5,
                  ),
                  GestureDetector(
                    onTap: () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignUpPage()))
                    },
                    child: SizedBox(
                      height: 30.0,
                      width: double.infinity,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Don't have an account?",
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            SizedBox(width: 3.0),
                            Text(
                              'Sign up.',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
