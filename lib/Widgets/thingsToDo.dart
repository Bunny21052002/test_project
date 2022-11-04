import 'package:flutter/material.dart';

import '../Constants/constants.dart';

class thingsToDo extends StatelessWidget {
  Size size;
  thingsToDo({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.5,
      width: size.width,
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                "Things to Do",
                style: style2,
              ),
            ),
            Wrap(
              spacing: 20,
              runSpacing: 20,
              children: [
                containers(
                    size: size,
                    img: Image.asset(
                      "images/img2.png",
                      height: size.height * 0.25,
                      width: size.width * 0.25,
                    ),
                    txt: "Agri-tour"),
                containers(
                    size: size,
                    img: Image.asset(
                      "images/img1.png",
                      height: size.height * 0.25,
                      width: size.width * 0.25,
                    ),
                    txt: "City Sight"),
                containers(
                    size: size,
                    img: Image.asset(
                      "images/img2.png",
                      height: size.height * 0.25,
                      width: size.width * 0.25,
                    ),
                    txt: "Concerts"),
                containers(
                    size: size,
                    img: Image.asset(
                      "images/img1.png",
                      height: size.height * 0.25,
                      width: size.width * 0.25,
                    ),
                    txt: "Cultural tools"),
                containers(
                    size: size,
                    img: Image.asset(
                      "images/img2.png",
                      height: size.height * 0.25,
                      width: size.width * 0.25,
                    ),
                    txt: "Heritage"),
                containers(
                    size: size,
                    img: Image.asset(
                      "images/img1.png",
                      height: size.height * 0.25,
                      width: size.width * 0.25,
                    ),
                    txt: "Agri-tour"),
                containers(
                    size: size,
                    img: Image.asset(
                      "images/img2.png",
                      height: size.height * 0.25,
                      width: size.width * 0.25,
                    ),
                    txt: "Agri-tour"),
                containers(
                    size: size,
                    img: Image.asset(
                      "images/img1.png",
                      height: size.height * 0.25,
                      width: size.width * 0.25,
                    ),
                    txt: "Agri-tour"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class containers extends StatelessWidget {
  Image img;
  String txt;
  containers(
      {Key? key, required this.size, required this.img, required this.txt})
      : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
      height: size.width * 0.25,
      width: size.width * 0.25,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ClipRRect(borderRadius: BorderRadius.circular(8.0), child: img),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              txt,
              style: style4,
            ),
          )
        ],
      ),
    );
  }
}
