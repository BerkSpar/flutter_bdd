import 'package:flutter/material.dart';

/// HomePage is the page responsible for the Home feature.
///
/// It is responsible for providing the dependencies of the Home feature.
class HomePage extends StatefulWidget {
  /// Creates a HomePage.
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      key: Key('home_page'),
      body: Center(
        child: Text('Home Page'),
      ),
    );
  }
}
