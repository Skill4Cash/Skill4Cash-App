import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget? child;
  const Background({Key? key, @required this.child, this.size})
      : super(key: key);

  final Size? size;
  @override
  Widget build(BuildContext context) {
    Size? size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: size.height,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                "assets/images/ellipse_1.png",
                width: size.width * 0.35,
              ),
            ),
            Positioned(
                top: 0,
                left: 1,
                child: Image.asset(
                  "assets/images/ellipse_2.png",
                  width: size.width * 0.35,
                ))
          ],
        ),
      ),
    );
  }
}
