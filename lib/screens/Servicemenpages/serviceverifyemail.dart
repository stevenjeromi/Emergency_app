import 'package:emergency_app/screens/Servicemenpages/serviceresetpasswd.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class serviceverifyemail extends StatelessWidget {
  serviceverifyemail({super.key, required this.check});
  int check;
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
            Text('Verify your Email',
                style: TextStyle(
                    color: Color.fromARGB(760, 249, 26, 26), fontSize: 30)),
            SizedBox(
              height: 40,
              width: width,
            ),
            Icon(
              Icons.email_rounded,
              color: Color.fromARGB(760, 249, 26, 26),
              size: 70.0,
            ),
            SizedBox(
              height: 40,
              width: width,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Text('Please enter the 4 digit code',
                  style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
            Text('send to your Email-id ',
                style: TextStyle(color: Colors.white, fontSize: 20)),
            SizedBox(
              height: 40,
              width: width,
            ),
            PinCodeTextField(
              maxLength: 4,
              pinBoxColor: Color.fromARGB(760, 249, 26, 26),
              pinBoxHeight: 60,
              pinBoxWidth: 60,
              pinBoxRadius: 10,
              pinTextStyle: TextStyle(color: Colors.white),
              onTextChanged: (p0) {},
              onDone: (text) => {},
            ),
            SizedBox(
              height: 10,
              width: width,
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Resend code',
                  style: TextStyle(
                    color: Color.fromARGB(760, 249, 26, 26),
                    fontSize: 20,
                  ),
                )),
            SizedBox(
              height: 60,
              width: width,
            ),
            SizedBox(
              height: 50,
              width: 150,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => serviceresetpasswd(
                              check: check,
                            )),
                  );
                },
                child: Text(
                  'Verify',
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
