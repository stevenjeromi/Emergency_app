import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Bgroup extends StatefulWidget {
  Bgroup({super.key, required this.text});

  @override
  String text;
  State<Bgroup> createState() => _BgroupState();
}

class _BgroupState extends State<Bgroup> {
  Color textcolor = Color.fromARGB(760, 249, 26, 26);
  bool _isClicked = false;
  Color contcolor = Colors.black45;
  void _changeColor() {
    setState(() {
      if (_isClicked) {
        textcolor = Color.fromARGB(760, 249, 26, 26);
        contcolor = Colors.black;
      } else {
        textcolor = Colors.black;
        contcolor = Color.fromARGB(760, 249, 26, 26);
      }
      _isClicked = !_isClicked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _changeColor,
      child: Align(
        alignment: Alignment.topLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Container(
            height: 70,
            width: 150,
            decoration: BoxDecoration(
              border: Border.all(
                  color: textcolor, width: 5, style: BorderStyle.solid),
              color: contcolor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
                child: Text(
              widget.text,
              style: TextStyle(
                  color: textcolor, fontSize: 40, fontWeight: FontWeight.bold),
            )),
          ),
        ),
      ),
    );
  }
}
