import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';

class BloodRequestCard extends StatefulWidget {
  BloodRequestCard({
    super.key,
    required this.bgroup,
    required this.name,
    required this.location,
    required this.phno,
  });
  String name;
  String location;
  String bgroup;
  String phno;

  @override
  State<BloodRequestCard> createState() => _BloodRequestCardState();
}

class _BloodRequestCardState extends State<BloodRequestCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Center(
            child: Container(
          height: 200,
          width: 350,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Color.fromARGB(760, 249, 26, 26),
                width: 5,
              )),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 8.0),
              child: Row(
                children: [
                  Text(
                    'Required :',
                    style: TextStyle(
                      color: Color.fromARGB(760, 249, 26, 26),
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    widget.bgroup,
                    style: TextStyle(
                      color: Color.fromARGB(760, 249, 26, 26),
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 5.0),
              child: Row(
                children: [
                  Text(
                    'Name :',
                    style: TextStyle(
                      color: Color.fromARGB(760, 249, 26, 26),
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    widget.name,
                    style: TextStyle(
                      color: Color.fromARGB(760, 249, 26, 26),
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 5.0),
              child: Row(
                children: [
                  Text(
                    'Phone-no :',
                    style: TextStyle(
                      color: Color.fromARGB(760, 249, 26, 26),
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    widget.phno,
                    style: TextStyle(
                      color: Color.fromARGB(760, 249, 26, 26),
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 5.0),
              child: Row(
                children: [
                  Text(
                    'Location :',
                    style: TextStyle(
                      color: Color.fromARGB(760, 249, 26, 26),
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    widget.location,
                    style: TextStyle(
                      color: Color.fromARGB(760, 249, 26, 26),
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 80,
                  height: 35,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                              side: BorderSide(
                                color: Color.fromARGB(760, 249, 26, 26),
                                width: 3,
                              )),
                          backgroundColor: Colors.green),
                      onPressed: () {},
                      child: Icon(Icons.check)),
                ),
                SizedBox(
                  width: 40,
                ),
                Container(
                  width: 80,
                  height: 35,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                            side: BorderSide(
                              color: Color.fromARGB(760, 249, 26, 26),
                              width: 3,
                            )),
                        backgroundColor: Colors.red,
                      ),
                      onPressed: () {},
                      child: Icon(Icons.close)),
                ),
              ],
            )
          ]),
        )),
      ],
    );
  }
}
