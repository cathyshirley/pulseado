import 'package:pulseado/application/auth/auth_bloc.dart';
import 'package:pulseado/application/ui/account/account_bloc.dart';
import 'package:pulseado/application/ui/inbox/inbox_bloc.dart';
import 'package:pulseado/application/ui/navigation_bar/navigation_bar_bloc.dart';
import 'package:pulseado/injectable.dart';
import 'package:pulseado/presentation/account/account.dart';
import 'package:pulseado/presentation/inbox/inbox.dart';
import 'package:pulseado/presentation/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => getIt<NavigationBarBloc>()),
          BlocProvider(create: (context) => getIt<InboxBloc>()),
          BlocProvider(create: (context) => getIt<AccountBloc>()),
          BlocProvider(create: (context) => getIt<AuthBloc>()),
        ],
        child: MultiBlocListener(
          listeners: [
            BlocListener<AuthBloc, AuthState>(
              listener: (context, state) {
                state.maybeMap(
                    userUnauthenticated: (e) {
                      Navigator.of(context).pushNamedAndRemoveUntil(
                          Routes.signinPage, (route) => false);
                    },
                    orElse: () {});
              },
            ),
          ],
          child: BlocBuilder<NavigationBarBloc, NavigationBarState>(
            builder: (context, state) {
              return Scaffold(
                bottomNavigationBar: BottomNavigationBar(
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  currentIndex: state.currentPage,
                  selectedItemColor: Colors.blue,
                  backgroundColor: Colors.transparent,
                  onTap: (index) => context
                      .read<NavigationBarBloc>()
                      .add(NavigationBarEvent.pageChanged(pageNo: index)),
                  items: const [
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
                body: PageView(
                  onPageChanged: (index) {
                    context
                        .read<NavigationBarBloc>()
                        .add(NavigationBarEvent.pageChanged(pageNo: index));
                  },
                  controller: state.pageController,
                  children: [
                    Inbox(),
                    const Center(child: Text('Implementation pending.')),
                    Account(),
                  ],
                ),
              );
            },
          ),
        ));
  }
}
