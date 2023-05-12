import 'package:emergency_app/screens/Servicemenpages/blooddonation/blooddonatelogin.dart';
import 'package:emergency_app/screens/Servicemenpages/service_main_pages/blooddonate_main.dart';
import 'package:emergency_app/screens/Servicemenpages/service_select/select.dart';
import 'package:emergency_app/screens/Servicemenpages/servicecreate.dart';
import 'package:emergency_app/screens/Servicemenpages/serviceforgotpassword.dart';
import 'package:emergency_app/screens/Servicemenpages/servicelogin.dart';
import 'package:emergency_app/screens/Servicemenpages/serviceotpverify.dart';
import 'package:emergency_app/screens/Servicemenpages/serviceresetpasswd.dart';
import 'package:emergency_app/screens/Servicemenpages/serviceverifyemail.dart';
import 'package:emergency_app/screens/splash.dart';
import 'package:emergency_app/screens/userpages/Blooddonation/bloodrequest.dart';
import 'package:emergency_app/screens/userpages/otpverify.dart';
import 'package:emergency_app/screens/userpages/resetpasswd.dart';
import 'package:emergency_app/screens/userpages/usercreate.dart';
import 'package:emergency_app/screens/userpages/userforgotpssw.dart';
import 'package:emergency_app/screens/userpages/userlogin.dart';
import 'package:emergency_app/screens/userpages/usermain.dart';
import 'package:emergency_app/screens/userpages/usermessage.dart';
import 'package:emergency_app/screens/userpages/userverifyemail.dart';

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
        'select': (context) => const Select(),
        //'servicelogin': (context) =>  servicelogin(),
        //'servicecreate': (context) => const Servicecreate(),
        //'serviceforgotpssw': (context) =>  serviceforgotpssw(),
        //'serviceverifyemail': (context) =>  serviceverifyemail(),
        //'serviceresetpasswd': (context) => serviceresetpasswd(),
        //'serviceotpverify': (context) =>  serviceotpverify(),
        //'BloodDonate': (context) => BloodDonate(),
        'BloodDonateMain': (context) => BloodDonateMain(),
      },
    );
  }
}
