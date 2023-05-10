// ignore_for_file: unused_local_variable
import 'package:humanitarian_icons/humanitarian_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'dart:async';

class usermain extends StatefulWidget {
  const usermain({super.key});

  @override
  State<usermain> createState() => _usermainState();
}

class _usermainState extends State<usermain> {
  bool enable = false;
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            Image.asset(
              'assets/images/EMERGNECY-removebg-preview.png',
              height: 150.0,
              width: 150.0,
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Container(
                child: TextField(
                  enabled: true,
                  controller: _controller,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            enable = true;
                          });
                        },
                        icon: Icon(
                          Icons.edit,
                          color: Color.fromARGB(760, 249, 26, 26),
                        )),
                    prefixIcon: new Icon(
                      Icons.location_on,
                      size: 20,
                      color: Color.fromARGB(760, 249, 26, 26),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    filled: true,
                    fillColor: Colors.white,
                    hintStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.w300),
                    hintText: "Location",
                  ),
                ),
              ),
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                children: [
                  InkWell(
                    child: Container(
                      padding: EdgeInsets.all(15),
                      height: 160,
                      width: 160,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(760, 249, 26, 26),
                          border: Border.all(width: 10, color: Colors.white),
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Icon(
                              HumanitarianIcons.ambulance,
                              color: Colors.black,
                              size: 70,
                            ),
                            SizedBox(height: 7),
                            const Text(
                              'Ambulance',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700),
                            )
                          ],
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, 'usermessage');
                    },
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    child: Container(
                      padding: EdgeInsets.all(15),
                      height: 160,
                      width: 160,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(760, 249, 26, 26),
                          border: Border.all(width: 10, color: Colors.white),
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            const Icon(
                              HumanitarianIcons.fire,
                              color: Colors.black,
                              size: 55,
                            ),
                            SizedBox(height: 12),
                            const Text(
                              'Fire',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700),
                            )
                          ],
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, 'usermessage');
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                children: [
                  InkWell(
                    child: Container(
                      padding: EdgeInsets.all(15),
                      height: 160,
                      width: 160,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(760, 249, 26, 26),
                          border: Border.all(width: 10, color: Colors.white),
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Icon(
                              HumanitarianIcons.car,
                              color: Colors.black,
                              size: 70,
                            ),
                            SizedBox(height: 7),
                            const Text(
                              'Police',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700),
                            )
                          ],
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, 'usermessage');
                    },
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    child: Container(
                      padding: EdgeInsets.all(15),
                      height: 160,
                      width: 160,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(760, 249, 26, 26),
                          border: Border.all(width: 10, color: Colors.white),
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            const Icon(
                              HumanitarianIcons.alert,
                              color: Colors.black,
                              size: 55,
                            ),
                            SizedBox(height: 12),
                            const Text(
                              'Danger',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700),
                            )
                          ],
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, 'usermessage');
                    },
                  ),
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
