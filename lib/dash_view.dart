import 'package:flutter/material.dart';

import 'extension/random_gen.dart';

class DashView extends StatefulWidget {
  const DashView({super.key});

  @override
  State<DashView> createState() => _DashViewState();
}

class _DashViewState extends State<DashView> {
  void showRandomNumber(BuildContext context, {int max = 1000}) {
    var randomN = RandomNumGen(10).random.toString();
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar(reason: SnackBarClosedReason.swipe)
      ..showSnackBar(SnackBar(
        duration: Duration(milliseconds: max),
        content: Text(randomN),
      ));
  }

  @override
  Widget build(BuildContext context) {
    const data = 'Generate a random number';
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                showRandomNumber(context, max: 500);
              },
              child: const Text(data),
            ),
          ),
        ],
      ),
    );
  }
}
