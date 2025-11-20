import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) => Center(
    child: Text('404  Page Not Found', style: TextStyle(fontSize: 20)),
  );
}
