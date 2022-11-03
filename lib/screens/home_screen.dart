import 'package:ab_multiply_demo/screens/video_watch_screen.dart';
import 'package:flutter/material.dart';
import 'package:ab_multiply_demo/utilities/constants.dart';
import 'package:ab_multiply_demo/screens/video_watch.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Container(
              child: Column(
                children: [
                  ElevatedButton(
                    style: kHomeScreenButtonStyle,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return VideoWatchScreen();
                          },
                        ),
                      );
                    },
                    child: Text('Video Watch'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: kHomeScreenButtonStyle,
                    onPressed: () {},
                    child: Text('Active Dayz'),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
