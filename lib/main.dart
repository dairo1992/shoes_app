import 'package:flutter/material.dart';
import 'package:wakelock/wakelock.dart';

import 'src/screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Wakelock.enable();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ShoesApp',
      // home: Scaffold(
      //   body: Center(
      //     child: Container(
      //       child: ZapatoScreen(),
      //     ),
      //   ),
      // ),
      home: (ZapatoDescScreen()),
    );
  }
}
