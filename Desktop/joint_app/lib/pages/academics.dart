import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:joint_app/bottomCurve.dart';

const purple = const Color(0XFFAA8EE5);
const bcircle = const Color.fromRGBO(117, 172, 182, 0.5);
const scircle = const Color.fromRGBO(255, 255, 255, 0.7);

class Academic extends StatefulWidget {
  Academic({Key key}) : super(key: key);

  @override
  _AcademicState createState() => _AcademicState();
}

class _AcademicState extends State<Academic> {
  @override
  Widget build(BuildContext context) {
    Widget background = new Container(
      decoration: new BoxDecoration(color: purple),
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
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 179,
              ),
              Text(
                "Academics",
                style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Lato',
                    color: Colors.black),
              ),
              SizedBox(
                height: 19,
              ),
              Text(
                "You won’t need 75% \nattendance here",
                style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.normal,
                    color: Colors.black),
              ),
              SizedBox(
                height: 56,
              ),
              SvgPicture.asset(
                'assets/images/academics.svg',
              )
            ],
          ),
        ],
      ),
    );
  }
}
