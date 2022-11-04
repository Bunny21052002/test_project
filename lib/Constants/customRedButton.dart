
import 'package:flutter/material.dart';
import 'package:test_project/Constants/constants.dart';

class customRedButton extends StatelessWidget {
  customRedButton({
    Key? key,
    required this.size,
    required this.txt,
  }) : super(key: key);

  final Size size;
  String txt;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Center(
        child: Container(
          height: size.height * 0.08,
          width: size.width * 0.8,
          decoration: BoxDecoration(
              color: Colors.red[800], borderRadius: BorderRadius.circular(20)),
          alignment: Alignment.center,
          child: Text(
            txt,
            style: style5,
          ),
        ),
      ),
    );
  }
}
