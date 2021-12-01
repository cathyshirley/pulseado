import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:im_animations/im_animations.dart';

class InboxPage extends StatefulWidget {
  final String name;

  const InboxPage({required this.name});

  @override
  State<InboxPage> createState() => _InboxPageState();
}

class _InboxPageState extends State<InboxPage> {
  late int bpm;
  late int _now;
  late Timer _everySecond;

  @override
  void initState() {
    super.initState();
    bpm = 70;
    final _random = Random();
    _everySecond = Timer.periodic(Duration(seconds: 1), (Timer t) {
      setState(() {
        if (_random.nextInt(2) == 1) {
          bpm = bpm + 2;
        } else {
          bpm = bpm - 2;
        }
      });
    });
  }

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
              widget.name,
              style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.w300),
            ),
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(24, 24, 24, 12),
                      child: Column(
                        children: [
                          HeartBeat(
                            child: Icon(
                              Icons.favorite,
                              color: Colors.pink,
                              size: 72.0,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "${bpm} BPM",
                            style: TextStyle(
                                fontSize: 32.0, fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Status: ",
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.w300),
                        ),
                        Text(
                          "Normal",
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w300,
                              color: Colors.green),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 120,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
