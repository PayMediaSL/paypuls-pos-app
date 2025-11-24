import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:payplus_pos_app/widgets/button_row.dart';

class SalesScreen extends StatelessWidget {
  const SalesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) async {
        if (didPop) return;

        final shouldExit = await showDialog<bool>(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Exit App'),
            content: const Text('Do you want to exit the application?'),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: const Text('Exit'),
              ),
            ],
          ),
        );

        if (shouldExit == true) {
          SystemNavigator.pop();
        }
      },
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text('Sales Screen', style: TextStyle(fontSize: 24))),
            ButtonRow(
              grayButtonText: 'Next',
              blueBlueText: 'Submit',
              onTapGrayButton: () {
                // Handle gray button tap
              },
              onTapBlueButton: () {
                // Handle blue button tap
              },
            ),
          ],
        ),
      ),
    );
  }
}
