library homescreen_feature;

import 'package:flutter/material.dart';

class HomeScreenPage extends StatelessWidget {
  const HomeScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    // 'Home Screen' text centered in a page
    return const Scaffold(
      backgroundColor: Colors.redAccent,
      body: Center(child: Text('Home Screen Feature')),
    );
  }
}
