import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'bloodrequestcard.dart';

class BloodDonateMain extends StatefulWidget {
  BloodDonateMain({super.key});

  @override
  State<BloodDonateMain> createState() => _BloodDonateMainState();
}

class _BloodDonateMainState extends State<BloodDonateMain> {
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
          body: isSwitched
              ? ListView(children: [
                  BloodRequestCard(
                    bgroup: 'A+',
                    name: 'qwerrt',
                    location: 'whvduwduwgd',
                    phno: '93992939',
                  ),
                  BloodRequestCard(
                    bgroup: 'O+',
                    name: 'chris gayle',
                    location: 'Jamaica',
                    phno: '93992939900',
                  )
                ])
              : Text('')),
    );
  }
}
