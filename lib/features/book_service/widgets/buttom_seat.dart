import 'dart:ffi';

import 'package:flutter/material.dart';

class ButtomSeat extends StatelessWidget {
  String signe;
  void Function()? onPressed;
  ButtomSeat({Key? key, required this.onPressed, required this.signe})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))),
      child: SizedBox(
        height: 63,
        child: Center(
          child: Text(
            signe,
            style: TextStyle(
              fontSize: 35,
            ),
          ),
        ),
      ),
    );
  }
}
