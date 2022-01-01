import 'package:flutter/material.dart';

class AppCircularProgressLoader extends StatelessWidget {
  final double? value;

  const AppCircularProgressLoader({Key? key, this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      color: Colors.indigoAccent,
      value: value,
    );
  }
}
