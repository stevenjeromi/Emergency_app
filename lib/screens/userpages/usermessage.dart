import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_ripple/flutter_ripple.dart';
import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';

class usermessage extends StatelessWidget {
  const usermessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
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
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Text('Tap to send voice message ',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Text(' to the service provider',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500)),
          ),
          SizedBox(
            height: 100,
          ),
          CircleAvatar(
            radius: 80,
            backgroundColor: Colors.blue,
            child: FloatingActionButton(
              splashColor: Colors.red,
              onPressed: () {},
              child: Icon(
                Icons.mic,
                size: 50,
              ),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          SizedBox(
            height: 60,
            width: 300,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'initiaterequest');
              },
              child: Text(
                'Initiate Request',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
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
    );
  }
}
