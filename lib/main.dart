import 'package:dev_empire/ui_tricks/nkwell_vs_gesturedetector.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DevEmpireApp());
}

class DevEmpireApp extends StatelessWidget {
  const DevEmpireApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dev Empire',
      home: NkwellVsGesturedetector(),
    );
  }
}
