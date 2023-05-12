import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class decision extends StatelessWidget {
  const decision({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
            ),
            Image.asset(
              'assets/images/EMERGNECY-removebg-preview.png',
              height: 150.0,
              width: 150.0,
            ),
            SizedBox(
              height: 100,
            ),
            Text(
              'Use this app either as ?',
              style: TextStyle(
                  color: Color.fromARGB(760, 249, 26, 26),
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 120,
            ),
            Column(children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: SizedBox(
                  height: 60,
                  width: 400,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'userlogin');
                    },
                    child: Text(
                      'User',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(760, 249, 26, 26),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text('OR',
                  style: TextStyle(
                      color: Color.fromARGB(760, 249, 26, 26),
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: SizedBox(
                  height: 60,
                  width: 400,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'select');
                    },
                    child: Text(
                      'SERVICE',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(760, 249, 26, 26),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
              )
            ]),
          ],
        ),
      ),
    );
  }
}
