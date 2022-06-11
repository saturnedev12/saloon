import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ActionProfileButton extends StatelessWidget {
  ActionProfileButton(
      {Key? key,
      required this.onPressed,
      required this.title,
      required this.icon})
      : super(key: key);

  final void Function()? onPressed;
  final String title;
  IconData icon;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))),
        backgroundColor: MaterialStateProperty.all(Colors.black),
        side: MaterialStateProperty.all(const BorderSide(
          color: Colors.black,
          width: 2,
        )),
      ),
      onPressed: onPressed,
      child: SizedBox(
        //width: 60,
        //height: 50,
        child: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
            Icon(
              icon,
              color: Colors.white,
            )
          ],
        )),
      ),
    );
  }
}
