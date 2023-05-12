import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class usercreate extends StatelessWidget {
  const usercreate({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
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
            Text('Create new account',
                style: TextStyle(
                    color: Color.fromARGB(760, 249, 26, 26), fontSize: 35)),
            SizedBox(
              height: 20,
              width: width,
            ),
            Container(
              height: 650,
              width: width,
              decoration: BoxDecoration(
                  color: Color.fromARGB(248, 224, 60, 60),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                    width: width,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: TextField(
                      style: TextStyle(color: Colors.white),
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
                          hintStyle:
                              TextStyle(color: Colors.white, fontSize: 20),
                          hintText: "username",
                          fillColor: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    width: width,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: TextField(
                      style: TextStyle(color: Colors.white),
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
                          hintStyle:
                              TextStyle(color: Colors.white, fontSize: 20),
                          hintText: "Email-id",
                          fillColor: Colors.black),
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
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          prefixIcon: new Icon(
                            Icons.password_rounded,
                            size: 20,
                            color: Colors.white,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          filled: true,
                          hintStyle:
                              TextStyle(color: Colors.white, fontSize: 20),
                          hintText: "passowrd",
                          fillColor: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    width: width,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          prefixIcon: new Icon(
                            Icons.phone_rounded,
                            size: 20,
                            color: Colors.white,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          filled: true,
                          hintStyle:
                              TextStyle(color: Colors.white, fontSize: 20),
                          hintText: "phone-No",
                          fillColor: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    width: width,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account ?',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'userlogin');
                          },
                          child: Text(
                            'Sign in',
                            style: TextStyle(color: Colors.black, fontSize: 25),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                    width: width,
                  ),
                  SizedBox(
                    height: 60,
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'otpverify');
                      },
                      child: Text(
                        'Create',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
