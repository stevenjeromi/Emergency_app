import 'package:emergency_app/screens/Servicemenpages/servicelogin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:humanitarian_icons/humanitarian_icons.dart';

import '../../userpages/userlogin.dart';
import '../blooddonation/blooddonatelogin.dart';

class Services extends StatefulWidget {
  Services({super.key, required this.name, required this.iconData});
  String name;
  late IconData iconData;
  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  Color textcolor = Color.fromARGB(760, 249, 26, 26);
  bool _isClicked = false;
  Color contcolor = Colors.black45;
  late int check = 0;

  void _changeColor() {
    setState(() {
      if (_isClicked) {
        textcolor = Color.fromARGB(760, 249, 26, 26);
        contcolor = Colors.black;
      } else {
        textcolor = Colors.black;
        contcolor = Color.fromARGB(760, 249, 26, 26);
      }
      _isClicked = !_isClicked;
    });
  }

  Future<void> _navigateToSecondPage() async {
    String servicename = widget.name;
    if (widget.name == 'Ambulance' ||
        widget.name == 'Fire' ||
        widget.name == 'Police') {
      check = 0;
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => servicelogin(
                  check: check,
                )),
      );
    } else {
      check = 1;
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => BloodDonate(
                  check: check,
                )),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _changeColor;
        _navigateToSecondPage();
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Container(
          height: 140,
          width: 160,
          decoration: BoxDecoration(
            border: Border.all(
                color: textcolor, width: 5, style: BorderStyle.solid),
            color: contcolor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
              child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Icon(
                widget.iconData,
                color: textcolor,
                size: 70,
              ),
              Text(
                widget.name,
                style: TextStyle(
                    color: textcolor,
                    fontSize: 29,
                    fontWeight: FontWeight.bold),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
