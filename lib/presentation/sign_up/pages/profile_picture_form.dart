import 'dart:ui';

import 'package:pulseado/application/auth/sign_up_form/profile_picture_form/profile_picture_form_bloc.dart';
import 'package:pulseado/domain/auth/value_objects.dart';
import 'package:pulseado/injectable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfilePictureForm extends StatelessWidget {
  final FullName name;

  const ProfilePictureForm({required this.name});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProfilePictureFormBloc>(),
      child: Scaffold(
        body: BlocConsumer<ProfilePictureFormBloc, ProfilePictureFormState>(
          listener: (context, state) {},
          builder: (context, state) {
            return SafeArea(
              child: Center(
                child: Column(
                  children: [
                    const SizedBox(height: 30.0),
                    const Text(
                      'Good Evening,',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.w100),
                    ),
                    Text(
                      name.getOrCrash(),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 40.0, fontWeight: FontWeight.w100),
                    ),
                    const SizedBox(height: 50.0),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        CircleAvatar(
                          radius: 100.0,
                          backgroundColor: Colors.grey,
                          backgroundImage: state.file
                              .fold(() => null, (a) => Image.file(a).image),
                          child: state.file.fold(
                              () => Text(
                                    name.initials(),
                                    style: const TextStyle(
                                        fontSize: 70.0,
                                        fontWeight: FontWeight.w100),
                                  ),
                              (a) => null),
                        ),
                        if (state.isSubmitting)
                          Container(
                            height: 202.0,
                            width: 202.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black.withOpacity(0.7),
                            ),
                          )
                        else
                          const SizedBox(),
                        if (state.isSubmitting)
                          const SizedBox(
                            height: 30,
                            width: 30,
                            child: CircularProgressIndicator(
                              strokeWidth: 2.0,
                              valueColor: AlwaysStoppedAnimation(Colors.white),
                            ),
                          )
                        else
                          const SizedBox(),
                      ],
                    ),
                    const SizedBox(height: 50.0),
                    Text(
                      state.response.fold(
                          () => 'Add a profile picture',
                          (a) => a.fold((l) => 'Add a profile picture',
                              (r) => 'All set to go!')),
                      // state.isUploaded ? "All Done!" : 'Add a profile picture',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25.0, fontWeight: FontWeight.w100),
                    ),
                    const SizedBox(height: 50.0),
                    GestureDetector(
                      onTap: () {
                        context
                            .read<ProfilePictureFormBloc>()
                            .add(const ProfilePictureFormEvent.getByGallery());
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.photo_library_outlined,
                            size: 20,
                            color: Colors.blue,
                          ),
                          const SizedBox(width: 10.0),
                          const Text(
                            'Choose from gallery',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    const SizedBox(
                      width: 200.0,
                      child: Divider(),
                    ),
                    const SizedBox(height: 10.0),
                    GestureDetector(
                      onTap: () {
                        context
                            .read<ProfilePictureFormBloc>()
                            .add(const ProfilePictureFormEvent.getByCamera());
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.photo_library_outlined,
                            size: 20,
                            color: Colors.blue,
                          ),
                          const SizedBox(width: 10.0),
                          const Text(
                            'Take a picture',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        state.response.fold(() => 'Skip',
                            (a) => a.fold((l) => 'Skip', (r) => 'Next')),
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                    SizedBox(height: 50.0),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
