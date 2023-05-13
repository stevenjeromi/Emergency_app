import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:auto_size_text/auto_size_text.dart';

class mapcard extends StatelessWidget {
  mapcard(
      {super.key,
      required this.name,
      required this.location,
      required this.phno});
  String name;
  String location;
  String phno;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Card(
        elevation: 4.0,
        margin: EdgeInsets.all(16.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        color: Colors.grey,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
              ),
              height: 200,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                  child: Row(
                    children: [
                      Text(
                        'Name :',
                        style: TextStyle(
                          color: Color.fromARGB(760, 249, 26, 26),
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        name,
                        style: TextStyle(
                          color: Color.fromARGB(760, 249, 26, 26),
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                  child: Row(
                    children: [
                      Text(
                        'Location :',
                        style: TextStyle(
                          color: Color.fromARGB(760, 249, 26, 26),
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        height: 40,
                        width: 200,
                        child: AutoSizeText(
                          location,
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          style: TextStyle(
                            color: Color.fromARGB(760, 249, 26, 26),
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                  child: Row(
                    children: [
                      Text(
                        'Phone-no :',
                        style: TextStyle(
                          color: Color.fromARGB(760, 249, 26, 26),
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        phno,
                        style: TextStyle(
                          color: Color.fromARGB(760, 249, 26, 26),
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
