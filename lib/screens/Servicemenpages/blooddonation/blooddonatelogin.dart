import 'package:emergency_app/screens/Servicemenpages/servicelogin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../userpages/Blooddonation/bloodgroup.dart';

class BloodDonate extends StatelessWidget {
  BloodDonate({super.key, required this.check});
  int check;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(children: [
          Align(
            alignment: Alignment.topLeft,
            child: IconButton(
                icon: Icon(Icons.arrow_back),
                color: Color.fromARGB(760, 249, 26, 26),
                iconSize: 30,
                onPressed: () {
                  Navigator.pop(context);
                }),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Text(
              'Select your Blood group',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromARGB(760, 249, 26, 26),
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Bgroup(text: 'A+'),
              Bgroup(text: 'A-'),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(children: [
            Bgroup(text: 'B+'),
            Bgroup(text: 'B-'),
          ]),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Bgroup(text: 'O+'),
              Bgroup(text: 'O-'),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Bgroup(text: 'AB+'),
              Bgroup(text: 'AB-'),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Container(
              height: 70,
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => servicelogin(
                              check: check,
                            )),
                  );
                },
                child: Text(
                  'Next',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    backgroundColor: Color.fromARGB(760, 249, 26, 26)),
              ))
        ])));
  }
}
