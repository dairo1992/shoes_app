import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wakelock/wakelock.dart';

import 'src/models/zapato_model.dart';
import 'src/screens/screens.dart';

void main() {
  return runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ZapatoModel())],
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Wakelock.enable();
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ShoesApp',
      home: (ZapatoScreen()),
    );
  }
}
