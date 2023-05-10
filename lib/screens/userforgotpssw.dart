import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class userforgotpssw extends StatelessWidget {
  const userforgotpssw({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
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
              width: width,
            ),
            Text('Forgot Password',
                style: TextStyle(
                    color: Color.fromARGB(760, 249, 26, 26), fontSize: 30)),
            SizedBox(
              height: 40,
              width: width,
            ),
            Icon(
              Icons.lock,
              color: Color.fromARGB(760, 249, 26, 26),
              size: 70.0,
            ),
            SizedBox(
              height: 40,
              width: width,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Text('Please enter your Email-id to ',
                  style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
            Text('receive a verification code ',
                style: TextStyle(color: Colors.white, fontSize: 20)),
            SizedBox(
              height: 60,
              width: width,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: new Icon(
                      Icons.email,
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
              height: 60,
              width: width,
            ),
            SizedBox(
              height: 50,
              width: 150,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'userverifyemail');
                },
                child: Text(
                  'Send code',
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
