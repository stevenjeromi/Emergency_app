import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'card.dart';

class otherservices extends StatefulWidget {
  const otherservices({super.key});

  @override
  State<otherservices> createState() => _otherservicesState();
}

class _otherservicesState extends State<otherservices> {
  bool isSwitched = false;
  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
      });
    } else {
      setState(() {
        isSwitched = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromARGB(760, 249, 26, 26),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 20,
              ),
              Text('Availabilitiy'),
              SizedBox(
                width: 20,
              ),
              Switch(
                value: isSwitched,
                onChanged: toggleSwitch,
                activeColor: Colors.white,
                activeTrackColor: Colors.green,
                inactiveThumbColor: Colors.white,
                inactiveTrackColor: Colors.white,
              )
            ],
          ),
        ),
        body: mapcard(
            name: 'qwertt', location: 'wxnwdenfkdwdwsw', phno: '9200299282'),
      ),
    );
  }
}
