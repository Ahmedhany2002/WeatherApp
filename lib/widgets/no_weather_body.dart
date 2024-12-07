import 'package:flutter/material.dart';

class NoWeatherBody extends StatelessWidget {
  const NoWeatherBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: const Text(
          textAlign: TextAlign.center,
          'there is no weather 😪 start searching now 🔍',
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
