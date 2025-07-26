import 'package:flutter/material.dart';

class ErrMassage extends StatelessWidget {
  const ErrMassage({super.key, required this.errMassage});
  final String errMassage;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(errMassage),
    );
  }
}
