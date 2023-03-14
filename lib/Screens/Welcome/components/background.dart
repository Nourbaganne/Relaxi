import 'package:flutter/cupertino.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    @required this.child,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: -50,
            left: -75,
            child: Image.asset(
              "assets/images/main_top.png",
              width: size.width * 0.5,
            ),
          ),
          Positioned(
              bottom: -60,
              left: -100,
              child: Image.asset(
                "assets/images/main_bottom.png",
                width: size.width * 0.5,
              )
          ),
          child,
        ],
      ),
    );
  }
}