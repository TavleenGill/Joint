import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:joint_app/bottomCurve.dart';

const green = const Color(0XFF8EE5A1);
const bcircle = const Color.fromRGBO(117, 172, 182, 0.5);
const scircle = const Color.fromRGBO(255, 255, 255, 0.7);

class Hostel extends StatefulWidget {
  Hostel({Key key}) : super(key: key);

  @override
  _HostelState createState() => _HostelState();
}

class _HostelState extends State<Hostel> {
  @override
  Widget build(BuildContext context) {
    Widget background = new Container(
      decoration: new BoxDecoration(color: green),
    );

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
              SizedBox(
                height: 179,
              ),
              Text(
                "Hostel & Rooms",
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
                "Indira awaas yojna done right",
                style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 56,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: SvgPicture.asset(
                  'assets/images/hostel.svg',
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
