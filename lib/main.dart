import 'package:emergency_app/screens/Blooddonation/bloodrequest.dart';
import 'package:emergency_app/screens/Blooddonation/bloodrequest.dart';
import 'package:emergency_app/screens/otpverify.dart';
import 'package:emergency_app/screens/resetpasswd.dart';
import 'package:emergency_app/screens/splash.dart';
import 'package:emergency_app/screens/usercreate.dart';
import 'package:emergency_app/screens/userforgotpssw.dart';
import 'package:emergency_app/screens/userlogin.dart';
import 'package:emergency_app/screens/usermessage.dart';
import 'package:emergency_app/screens/userverifyemail.dart';
import 'package:emergency_app/screens/usermain.dart';
import 'package:flutter/material.dart';
import 'package:emergency_app/screens/decision.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? Key}) : super(key: Key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.deepPurple),
      home: const splash(),
      routes: {
        'decision': (context) => const decision(),
        'userlogin': (context) => const userlogin(),
        'usercreate': (context) => const usercreate(),
        'userforgotpssw': (context) => const userforgotpssw(),
        'userverifyemail': (context) => const userverifyemail(),
        'resetpasswd': (context) => const resetpasswd(),
        'otpverify': (context) => const otpverify(),
        'usermain': (context) => const usermain(),
        'usermessage': (context) => const usermessage(),
        'bloodrequest': (context) => BloodRequest(),
      },
    );
  }
}
