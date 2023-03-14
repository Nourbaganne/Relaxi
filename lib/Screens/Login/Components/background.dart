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
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: -75,
            left: -125,
            child: Image.asset(
              "assets/images/main_top.png",
              width: size.width * 0.6,
            ),
          ),
          Positioned(
            bottom: -130,
            right: -100,
            child: Image.asset(
              "assets/images/login_buttom.png",
              width: size.width * 0.8,
            ),
          ),
          child,
        ],
      ),
    );
  }
}