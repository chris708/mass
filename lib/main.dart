import 'package:flutter/material.dart';
import 'package:mass/pages/asgn_roles.dart';
import 'package:mass/pages/home.dart';
import 'package:mass/pages/c_receiver1.dart';
import 'pages/c_receiver2.dart';
import 'pages/c_receiver3.dart';
import 'package:mass/pages/s_receiver.dart';
import 'package:mass/pages/role_body.dart';
import 'package:mass/pages/role_name.dart';
import 'package:mass/pages/event_details.dart';
import 'package:mass/pages/sender_details.dart';
import 'package:mass/pages/email_sender.dart';
import 'package:mass/pages/send_email.dart';
import 'package:mass/pages/final_page.dart';

void main() => runApp(MaterialApp(initialRoute: '/home', routes: {
      '/home': (context) => HomePage(),
      '/s_details': (context) => SenderDetail(),
      '/e_details': (context) => EventDetail(),
      '/r_name': (context) => RoleName(),
      '/a_roles': (context) => Home(),
      '/create_receiver1': (context) => ChooseLocation1(),
      '/create_receiver2': (context) => ChooseLocation2(),
      '/create_receiver3': (context) => ChooseLocation3(),
      '/select_receiver': (context) => SelectReceiver(),
      '/r_body': (context) => RoleBody(),
      '/sender': (context) => EmailSender(),
      '/send_email': (context) => SendEmail(),
      '/final': (context) => FinalPage(),
    }));
