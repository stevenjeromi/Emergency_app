import 'package:emergency_app/screens/Servicemenpages/service_select/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:humanitarian_icons/humanitarian_icons.dart';

class Select extends StatelessWidget {
  const Select({super.key});

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
          Image.asset(
            'assets/images/EMERGNECY-removebg-preview.png',
            height: 170.0,
            width: 170.0,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Select the type of Service you provide',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color.fromARGB(760, 249, 26, 26),
                fontSize: 25,
                fontWeight: FontWeight.normal),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Services(
                name: 'Ambulance',
                iconData: HumanitarianIcons.ambulance,
              ),
              Services(
                name: 'Fire',
                iconData: HumanitarianIcons.fire,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Services(
                name: 'Police',
                iconData: HumanitarianIcons.car,
              ),
              Services(
                name: 'Blood',
                iconData: FontAwesomeIcons.droplet,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
        ]),
      ),
    );
  }
}
