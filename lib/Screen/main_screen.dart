import 'package:flutter/material.dart';
import 'package:test_project/Constants/constants.dart';
import 'package:test_project/Widgets/recentSearch.dart';
import 'package:test_project/Widgets/thingsToDo.dart';

import '../Widgets/Promos.dart';
import '../Widgets/connectToDiscover.dart';
import '../Widgets/currencyExchange.dart';
import '../Widgets/ourStories.dart';
import '../Widgets/partition.dart';
import '../Widgets/weather.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RecentSearch(screenSize: screenSize),
            Partition(screenSize: screenSize),
            SingleChildScrollView(
              child: Column(
                children: [
                  thingsToDo(size: screenSize),
                  Partition(screenSize: screenSize),
                  connectToDiscover(size: screenSize),
                  Partition(screenSize: screenSize),
                  weather(size: screenSize),
                  Partition(screenSize: screenSize),
                  curExc(size: screenSize),
                  Partition(screenSize: screenSize),
                  promos(size: screenSize),
                  Partition(screenSize: screenSize),
                  ourStories(size: screenSize),
                  Partition(screenSize: screenSize)
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.grey,
                  size: 25,
                ),
                label: ""),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_month,
                size: 25,
                color: Colors.grey,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
                icon: SizedBox(
                  width: 20,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: SizedBox(
                  width: 20,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.chat_outlined,
                  size: 25,
                  color: Colors.grey,
                ),
                label: ""),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle_outlined,
                size: 25,
                color: Colors.grey,
              ),
              label: "",
            ),
          ]),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.pink,
        child: Icon(Icons.add),
      ),
    );
  }
}

// This is the uppperpart including name and recent searchs
class RecentSearch extends StatelessWidget {
  const RecentSearch({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
        height: screenSize.height * 0.48,
        child: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hello, Jhon!",
                      style: style1,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.search),
                      iconSize: 35,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Recent Searches",
                  style: style2,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    recentSearchCont(
                      size: screenSize,
                      img: Image.asset(
                        "images/cc.png",
                        height: screenSize.width * 0.26,
                        width: screenSize.width * 0.26,
                      ),
                      txt: "Capital Commons",
                    ),
                    recentSearchCont(
                        size: screenSize,
                        img: Image.asset(
                          "images/cc.png",
                          height: screenSize.width * 0.26,
                          width: screenSize.width * 0.26,
                        ),
                        txt: "Estancia Mall"),
                    recentSearchCont(
                        size: screenSize,
                        img: Image.asset(
                          "images/cc.png",
                          height: screenSize.width * 0.26,
                          width: screenSize.width * 0.26,
                        ),
                        txt: "Nagptaong Rock"),
                    recentSearchCont(
                        size: screenSize,
                        img: Image.asset(
                          "images/cc.png",
                          height: screenSize.width * 0.26,
                          width: screenSize.width * 0.26,
                        ),
                        txt: "Estancia Mall"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
