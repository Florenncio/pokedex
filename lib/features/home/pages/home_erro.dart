import 'package:flutter/material.dart';

class HomeErro extends StatelessWidget {
  const HomeErro({Key? key, required this.error}) : super(key: key);
  final String error;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(error),
      ),
    );
  }
}
