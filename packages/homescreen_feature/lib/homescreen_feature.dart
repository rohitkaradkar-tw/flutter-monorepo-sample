library homescreen_feature;

import 'package:flutter/material.dart';

class HomeScreenPage extends StatelessWidget {
  const HomeScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter app'),
      ),
      body: const Center(child: Text('Home Screen')),
    );
  }
}
