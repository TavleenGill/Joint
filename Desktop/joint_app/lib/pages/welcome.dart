import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:joint_app/bottomCurve.dart';

const pink = const Color(0XFFE68E8E);
const bcircle = const Color.fromRGBO(117, 172, 182, 0.5);
const scircle = const Color.fromRGBO(255, 255, 255, 0.7);

class Wlcm extends StatefulWidget {
  Wlcm({Key key}) : super(key: key);

  @override
  _WlcmState createState() => _WlcmState();
}

class _WlcmState extends State<Wlcm> {
  @override
  Widget build(BuildContext context) {
    Widget background =
        new Container(decoration: new BoxDecoration(color: pink));

    Widget bigCircle = Opacity(
        opacity: 0.3,
        child: Container(
          width: 264.0,
          height: 264.0,
          decoration: new BoxDecoration(
            color: bcircle,
            shape: BoxShape.circle,
          ),
        ));

    Widget smallCircle = Opacity(
        opacity: 0.7,
        child: Container(
          width: 196.0,
          height: 196.0,
          decoration: new BoxDecoration(
            color: scircle,
            shape: BoxShape.circle,
          ),
        ));

    return new Material(
      child: Stack(
        children: <Widget>[
          background,
          new Positioned(
            child: bigCircle,
            top: 96,
            left: 31,
          ),
          new Positioned(
            child: smallCircle,
            top: 50,
            left: 169,
          ),
          BottomCurve(),
          Column(
            children: <Widget>[
              SizedBox(height: 179),
              Text(
                "Welcome",
                style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontFamily: 'Lato'),
              ),
              SizedBox(
                height: 19,
              ),
              Text(
                "Hi there! Connect with us at this cool \nplatform and enjoy the experience",
                style: TextStyle(fontSize: 24, fontFamily: 'Lato'),
                softWrap: true,
              ),
              SizedBox(
                height: 56,
              ),
              Center(
                child: SvgPicture.asset(
                  'assets/images/welcome.svg',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
