import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Practice'),
      ),
      body: const Center(
        child: Text('Home'),
      ),
    );
  }
}
