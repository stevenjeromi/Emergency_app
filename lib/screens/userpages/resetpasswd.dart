import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class resetpasswd extends StatefulWidget {
  const resetpasswd({super.key});

  @override
  State<resetpasswd> createState() => _resetpasswdState();
}

class _resetpasswdState extends State<resetpasswd> {
  bool passenable = true;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            SizedBox(
              height: 30,
              width: width,
            ),
            Text('Reset Password',
                style: TextStyle(
                    color: Color.fromARGB(760, 249, 26, 26), fontSize: 30)),
            SizedBox(
              height: 40,
              width: width,
            ),
            Icon(
              Icons.lock_reset,
              color: Color.fromARGB(760, 249, 26, 26),
              size: 70.0,
            ),
            SizedBox(
              height: 40,
              width: width,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Text('Please enter the new password ',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w100)),
            ),
            SizedBox(
              height: 60,
              width: width,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'New password',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.w100),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                obscureText: passenable,
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
                    fillColor: Color.fromARGB(760, 249, 26, 26)),
              ),
            ),
            SizedBox(
              height: 40,
              width: width,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Confirm password',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.w100),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                obscureText: passenable,
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
                  fillColor: Color.fromARGB(760, 249, 26, 26),
                ),
              ),
            ),
            SizedBox(
              height: 60,
              width: width,
            ),
            SizedBox(
              height: 50,
              width: 150,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'userlogin');
                },
                child: Text(
                  'Confirm',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(760, 249, 26, 26),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
