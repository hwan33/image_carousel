import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    super.initState();

    Timer.periodic(
      Duration(seconds: 3),
          (timer) {
        print('실행!');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return Scaffold(
      body: PageView(
        children: [1, 2, 3, 4, 5]
            .map(
              (number) =>
              Image.asset(
                'asset/img/image_$number.jpeg',
                fit: BoxFit.cover,
              ),
        )
            .toList(),
      ),
    );
  }
}
