import 'package:flutter/material.dart';
import 'package:test_project/Constants/constants.dart';

class ourStories extends StatelessWidget {
  Size size;
  ourStories({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.33,
      width: size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 30),
            child: Text(
              "Our Stories",
              style: style2,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ourStoriesCont(
                    img: Image.asset("images/img5.png"),
                    size: size,
                    txt1: "Watertripx Drive Manila x Anglo Art Tour",
                    txt2: "Jan 17, 2020"),
                ourStoriesCont(
                    img: Image.asset("images/img6.png"),
                    size: size,
                    txt1: "Food and Creative Tourism",
                    txt2: "Nov 16, 2018"),
                ourStoriesCont(
                    img: Image.asset("images/img7.png"),
                    size: size,
                    txt1: "Welcome to Watatrip",
                    txt2: "Oct 2, 2018"),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ourStoriesCont extends StatelessWidget {
  Image img;
  Size size;
  String txt1;
  String txt2;
  ourStoriesCont({
    super.key,
    required this.img,
    required this.size,
    required this.txt1,
    required this.txt2,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0, left: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            
            height: size.height * 0.2,
            width: size.width * 0.8,
            child: img,
          ),
          Text(txt1, style: style6),
          Text(txt2, style: style7),
        ],
      ),
    );
  }
}
