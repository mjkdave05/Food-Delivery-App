import 'package:flutter/material.dart';

class DessertScreen extends StatelessWidget {
  const DessertScreen({super.key});

  static const routeName = '/desertScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
              child: Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children: [

                      ],
                    ),
                  ),
                ],
              ),
          ),
        ],
      ),
    );
  }
}
