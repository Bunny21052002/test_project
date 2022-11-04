import 'package:flutter/material.dart';
import 'package:test_project/Constants/constants.dart';

class promos extends StatelessWidget {
  final Size size;
  const promos({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.55,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Promos",
              style: style2,
            ),
          ),
          Image.asset(
            "images/img4.png",
            width: size.width * 0.8,
          ),
        ],
      ),
    );
  }
}
