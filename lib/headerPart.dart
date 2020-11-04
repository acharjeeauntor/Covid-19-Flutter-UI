import 'package:covid19/constant.dart';
import 'package:covid19/infoScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeaderPart extends StatelessWidget {
  String headerImage;
  Color color1, color2;
  String text;

  HeaderPart({this.headerImage, this.color1, this.color2, this.text});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ClipPath(
      clipper: MyClipper(),
      child: Container(
        height: size.height * 0.4,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [color1, color2])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 15.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => InfoScreen()));
                    },
                    child: SvgPicture.asset("assets/icons/menu.svg")),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Expanded(
              child: Stack(
                children: [
                  SvgPicture.asset(
                    headerImage,
                    width: size.width * 0.70,
                    fit: BoxFit.fitHeight,
                    alignment: Alignment.center,
                  ),
                  Positioned(
                      top: 40,
                      left: 180.0,
                      child: Text(
                        text,
                        style: kHeadingTextStyle.copyWith(color: Colors.white),
                      )),
                  Container()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    Path path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width / 2, size.height - 100, size.width, size.height);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}
