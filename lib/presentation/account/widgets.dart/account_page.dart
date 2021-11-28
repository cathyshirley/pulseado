import 'package:pulseado/application/auth/auth_bloc.dart';
import 'package:pulseado/domain/user/user.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class AccountPage extends StatelessWidget {
  final User user;

  const AccountPage({required this.user});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        const SizedBox(
          height: 50.0,
        ),
        CircleAvatar(
          radius: 100.0,
          backgroundColor: Colors.grey,
          backgroundImage:
              user.imageURI.fold(() => null, (a) => NetworkImage(a)),
          child: user.imageURI.fold(
              () => Text(
                    user.fullName.initials(),
                    style: const TextStyle(
                        fontSize: 70.0, fontWeight: FontWeight.w100),
                  ),
              (a) => null),
        ),
        const SizedBox(
          height: 50.0,
        ),
        Text(
          user.fullName.getOrCrash(),
          style: const TextStyle(fontSize: 40.0, fontWeight: FontWeight.w300),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          '@${user.username.getOrCrash()}',
          style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.w300),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {
            context.read<AuthBloc>().add(const AuthEvent.userSignedOut());
          },
          child: const SizedBox(
            height: 25.0,
            width: 100.0,
            child: Center(
              child: Text(
                'Logout',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 30.0,
        ),
      ],
    ));
  }
}
