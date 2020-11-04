import 'package:covid19/constant.dart';
import 'package:covid19/headerPart.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderPart(
              color1: Color(0xffF1948A),
              color2: Color(0xffCB4335),
              text: "Stay Home \n Stay Safe",
              headerImage: "assets/icons/coronadr.svg",
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(Icons.arrow_forward),
                      hintText: "Search by Country name")),
            ),
            SizedBox(
              height: 10,
            ),
            infected(),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    "World Wide Infected",
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                infected(),
              ],
            )
          ],
        ),
      ),
    );
  }

  Card infected() {
    return Card(
      margin: EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: Counter(
              color: Colors.pink,
              title: "Infected",
              count: "2560",
            ),
          ),
          Container(
            child: Counter(
              color: Colors.red,
              title: "Deaths",
              count: "25",
            ),
          ),
          Container(
            child: Counter(
              color: Colors.green,
              title: "Recoverd",
              count: "256054",
            ),
          ),
        ],
      ),
      elevation: 10.0,
      shadowColor: Colors.grey,
    );
  }
}

class Counter extends StatelessWidget {
  Color color;
  String title;
  String count;

  Counter({this.title, this.count, this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "$title",
            style: kSubTextStyle,
          ),
          Text(
            "$count",
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.w600, color: color),
          )
        ],
      ),
    );
  }
}
