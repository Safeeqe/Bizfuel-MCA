import 'dart:io';

import 'package:bizfuel/Businesses/Bizpost3.dart';
import 'package:bizfuel/Businesses/Business_post.dart';
import 'package:bizfuel/Businesses/Myads1.dart';
import 'package:bizfuel/Businesses/bizhomepage.dart';
import 'package:bizfuel/Businesses/bizregistration.dart';
import 'package:bizfuel/Businesses/resellerrequst.dart';
import 'package:bizfuel/Businesses/sentrequest.dart';
import 'package:bizfuel/Businesses/businesstype.dart';
import 'package:bizfuel/Businesses/businesstypeshome.dart';
import 'package:bizfuel/Businesses/chats.dart';
import 'package:bizfuel/Businesses/requstedresellers.dart';
import 'package:bizfuel/Resellers/Resellerchat.dart';
import 'package:bizfuel/firebase_options.dart';
import 'package:bizfuel/login/home1.dart';
import 'package:bizfuel/login/letsgo.dart';
import 'package:bizfuel/login/login.dart';
import 'package:bizfuel/login/loginsuccesfully.dart';
import 'package:bizfuel/login/newpassword.dart';
import 'package:bizfuel/Businesses/payments.dart';
import 'package:bizfuel/Resellers/resellerhomepage.dart';
import 'package:bizfuel/Resellers/resellerprofile.dart';
import 'package:bizfuel/Businesses/resellers.dart';
import 'package:bizfuel/Resellers/resellregistration.dart';
import 'package:bizfuel/login/reset.dart';
import 'package:bizfuel/login/tutorial.dart';
import 'package:bizfuel/setlocation.dart';
import 'package:bizfuel/login/varification.dart';
import 'package:bizfuel/login/welcome.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Requested_resellers(),
    );
  }
}
