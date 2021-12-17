import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String title;
  final int lenght;
  final int result;
  const ResultPage({
    Key? key,
    required this.title,
    required this.lenght,
    required this.result,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
      ),
    );
  }
}
