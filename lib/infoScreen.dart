import 'package:covid19/headerPart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class InfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderPart(
              color1: Color(0xff7FB3D5),
              color2: Color(0xff2471A3),
              text: "More About \n Covid-19",
              headerImage: "assets/icons/Drcorona.svg",
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Symptomps",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SympImage(
                          title: 'Headache', img: "assets/images/headache.png"),
                      SympImage(title: 'Cough', img: "assets/images/caugh.png"),
                      SympImage(title: 'Fever', img: "assets/images/fever.png")
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Prevention",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  PreventionContent(
                      image: "assets/images/wear_mask.png",
                      title: "Wear Face Mask",
                      desc: "Wear Face musk can \n prevent corona virus"),
                  PreventionContent(
                    image: "assets/images/wash_hands.png",
                    title: "Wash Your Hands",
                    desc: "Wash your hand \n Every 30 minutes",
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SympImage extends StatelessWidget {
  String title;
  String img;

  SympImage({this.title, this.img});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10.0,
      child: Padding(
        padding: const EdgeInsets.all(9.0),
        child: Column(
          children: [
            Image(image: AssetImage(img)),
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}

class PreventionContent extends StatelessWidget {
  String image, title, desc;

  PreventionContent({this.title, this.desc, this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      height: MediaQuery.of(context).size.height * 0.2,
      width: double.infinity,
      child: Row(
        children: [
          Image(
            image: AssetImage(image),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              Text(desc),
            ],
          )
        ],
      ),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey,
          blurRadius: 10,
          offset: Offset(0, 8),
        )
      ], color: Colors.white, borderRadius: BorderRadius.circular(10)),
    );
  }
}
