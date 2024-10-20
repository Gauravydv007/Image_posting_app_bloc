import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final void Function()? onTap;
  final String tXt;
  final double H;
  final double W;
  const MyButton(
      {super.key,
      required this.onTap,
      required this.tXt,
      required this.H,
      required this.W});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Theme.of(context).colorScheme.tertiary),
        height: H,
        width: W,
        child: Center(
            child: Text(
          tXt,
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
        )),
      ),
    );
  }
}
