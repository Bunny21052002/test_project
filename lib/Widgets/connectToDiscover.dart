import 'package:flutter/material.dart';
import 'package:test_project/Constants/constants.dart';

import '../Constants/customRedButton.dart';

class connectToDiscover extends StatefulWidget {
  final Size size;
  const connectToDiscover({super.key, required this.size});

  @override
  State<connectToDiscover> createState() => _connectToDiscoverState(size: size);
}

class _connectToDiscoverState extends State<connectToDiscover> {
  @override
  Size size;
  _connectToDiscoverState({required this.size});
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.58,
      width: size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Text(
              "Connect to Discover",
              style: style2,
            ),
          ),
          Image.asset("images/img3.png"),
          customRedButton(size: size, txt: "Show What's Near Me",)
        ],
      ),
    );
  }
}
