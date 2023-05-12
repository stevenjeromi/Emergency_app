import 'dart:ui';

import 'package:emergency_app/screens/Servicemenpages/service_main_pages/blooddonate_main.dart';
import 'package:emergency_app/screens/Servicemenpages/servicecreate.dart';
import 'package:emergency_app/screens/Servicemenpages/serviceforgotpassword.dart';
import 'package:emergency_app/screens/userpages/userforgotpssw.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class servicelogin extends StatelessWidget {
  servicelogin({super.key, required this.check});
  int check;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: SafeArea(
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
            Text(
              'Hello',
              style: TextStyle(
                  color: Color.fromARGB(760, 249, 26, 26),
                  fontSize: 50,
                  fontFamily: ''),
            ),
            SizedBox(
              height: 30,
              width: width,
            ),
            Text('Sign in to your account',
                style: TextStyle(
                    color: Color.fromARGB(760, 249, 26, 26), fontSize: 30)),
            SizedBox(
              height: 140,
              width: width,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: new Icon(
                      Icons.person,
                      size: 20,
                      color: Colors.white,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.white, fontSize: 20),
                    hintText: "Email-id",
                    fillColor: Color.fromARGB(760, 249, 26, 26)),
              ),
            ),
            SizedBox(
              height: 40,
              width: width,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    prefixIcon: new Icon(
                      Icons.password_sharp,
                      size: 20,
                      color: Colors.white,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.white, fontSize: 20),
                    hintText: "Password",
                    fillColor: Color.fromARGB(760, 249, 26, 26)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: FractionalOffset.bottomRight,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => serviceforgotpssw(
                              check: check,
                            )),
                  );
                },
                child: Text(
                  'Forgot password ?',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ),
            SizedBox(
              height: 40,
              width: width,
            ),
            SizedBox(
              height: 60,
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  if (check == 1)
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BloodDonateMain()),
                    );
                  else {}
                },
                child: Text(
                  'Sign in',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(760, 249, 26, 26),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Dont have account ?',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Servicecreate(check: check)),
                      );
                    },
                    child: Text(
                      'Create',
                      style: TextStyle(
                          color: Color.fromARGB(760, 249, 26, 26),
                          fontSize: 25),
                    ))
              ],
            )
          ]),
        ),
      ),
    );
  }
}
