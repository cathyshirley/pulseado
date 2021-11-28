import 'package:flutter/material.dart';

class InboxPage extends StatelessWidget {
  final String name;

  const InboxPage({required this.name});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Good Evening,',
              style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.w300),
            ),
            Text(
              name,
              style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.w300),
            ),
          ],
        ),
      ),
    );
  }
}
