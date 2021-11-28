import 'package:pulseado/application/auth/auth_bloc.dart';
import 'package:pulseado/application/ui/home_page/home_page_bloc.dart';
import 'package:pulseado/domain/user/user.dart';
import 'package:pulseado/injectable.dart';
import 'package:pulseado/presentation/home_page/widgets/home_page_body.dart';
import 'package:pulseado/presentation/routes/routes.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<AuthBloc>()),
        BlocProvider(
            create: (_) =>
                getIt<HomePageBloc>()..add(const HomePageEvent.started())),
      ],
      child: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.maybeMap(
              userUnauthenticated: (_) {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    Routes.signinPage, (route) => false);
                // Navigator.of(context).pushReplacementNamed(Routes.signinPage);
              },
              orElse: () {});
        },
        child: BlocBuilder<HomePageBloc, HomePageState>(
          builder: (context, state) {
            final Option<User> user = state.repositoryResponse.fold(
              () => none(),
              (a) => a.fold(
                (l) => none(),
                (r) => some(r),
              ),
            ) as Option<User>;

            return Scaffold(
              endDrawer: Drawer(
                child: Column(
                  children: [
                    UserAccountsDrawerHeader(
                      accountName: Text(
                          user.fold(() => '', (a) => a.fullName.getOrCrash())),
                      accountEmail: Text(user.fold(
                          () => '', (a) => a.emailAddress.getOrCrash())),
                      currentAccountPicture: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Text(
                          "A",
                          style: TextStyle(fontSize: 40.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    // GestureDetector(
                    //   onTap: () => Navigator.of(context)
                    //       .pushNamed(Routes.profilePictureForm,
                    //           arguments: state.currentUser.fold(
                    //             () => '',
                    //             (a) => a.fullName,
                    //           )),
                    //   child: Text('Profile picture'),
                    // ),
                    Spacer(),
                    SizedBox(
                      width: double.infinity,
                      child: GestureDetector(
                        onTap: () {
                          context
                              .read<AuthBloc>()
                              .add(const AuthEvent.userSignedOut());
                        },
                        child: Column(
                          children: [
                            Divider(
                              thickness: 0.5,
                              color: Colors.grey,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                'Sign out',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  // color: Colors.blue,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    )
                  ],
                ),
              ),
              bottomNavigationBar: BottomNavigationBar(
                showSelectedLabels: false,
                showUnselectedLabels: false,
                currentIndex: 0,
                selectedItemColor: Colors.blue,
                backgroundColor: Colors.transparent,
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.message_rounded),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.camera_alt_rounded),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.account_circle_rounded),
                    label: '',
                  ),
                ],
              ),
              body: state.isFetchingData
                  ? const Center(
                      child: SizedBox(
                        child: CircularProgressIndicator(
                          strokeWidth: 2.0,
                          valueColor: AlwaysStoppedAnimation(Colors.white),
                        ),
                      ),
                    )
                  : HomePageBody(state),
            );
          },
        ),
      ),
    );
  }
}
