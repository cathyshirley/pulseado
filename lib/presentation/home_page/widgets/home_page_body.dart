import 'package:pulseado/application/ui/home_page/home_page_bloc.dart';
import 'package:flutter/material.dart';

class HomePageBody extends StatelessWidget {
  final HomePageState state;

  const HomePageBody(this.state);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: Column(
          children: [
            Row(
              children: [
                Spacer(),
                IconButton(
                  icon: const Icon(Icons.menu, color: Colors.white, size: 30.0),
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                ),
              ],
            ),
            // Text(
            //   'Good Evening, ${state.currentUser.fold(
            //     () => '',
            //     (a) => a.fullName.getOrCrash(),
            //   )}',
            //   style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.w300),
            // ),
          ],
        ),
      ),
    );
  }
}
