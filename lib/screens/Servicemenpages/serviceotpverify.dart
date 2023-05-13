import 'package:emergency_app/screens/Servicemenpages/service_main_pages/blooddonate_main.dart';
import 'package:emergency_app/screens/Servicemenpages/service_main_pages/other_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class serviceotpverify extends StatelessWidget {
  serviceotpverify({super.key, required this.check});
  int check;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromARGB(760, 249, 26, 26),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                  icon: Icon(Icons.arrow_back),
                  color: Colors.black,
                  iconSize: 30,
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ),
            Image.asset(
              'assets/images/otp_verify-removebg-preview.png',
              height: 150.0,
              width: 150.0,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Verification',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 20,
            ),
            Text.rich(TextSpan(
                text: 'you will receive an OTP via',
                style: TextStyle(color: Colors.black, fontSize: 16),
                children: [
                  TextSpan(
                      text: ' SMS',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w600))
                ])),
            SizedBox(height: 20),
            Container(
              width: width,
              height: 450,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: Column(children: [
                SizedBox(height: 40),
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
                SizedBox(height: 40),
                Text.rich(TextSpan(
                    text: 'Did not receive the OTP ?',
                    style: TextStyle(
                        color: Color.fromARGB(760, 249, 26, 26), fontSize: 16),
                    children: [
                      TextSpan(
                          text: ' Resend OTP',
                          style: TextStyle(
                              color: Color.fromARGB(760, 249, 26, 26),
                              fontSize: 20,
                              fontWeight: FontWeight.w600))
                    ])),
                SizedBox(height: 60),
                SizedBox(
                  height: 50,
                  width: 150,
                  child: ElevatedButton(
                    onPressed: () {
                      if (check == 1) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BloodDonateMain()),
                        );
                      } else {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => otherservices()),
                        );
                      }
                    },
                    child: Text(
                      'Verify',
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.normal),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(760, 249, 26, 26),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                  ),
                ),
              ]),
            )
          ],
        )),
      ),
    );
  }
}
