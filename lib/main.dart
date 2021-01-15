import 'package:flutter/material.dart';
import 'package:mass/pages/asgn_roles.dart';
import 'package:mass/pages/home.dart';
import 'package:mass/pages/c_receiver.dart';
import 'package:mass/pages/s_receiver.dart';
import 'package:mass/pages/role_body.dart';
import 'package:mass/pages/role_name.dart';
import 'package:mass/pages/event_details.dart';
import 'package:mass/pages/sender_details.dart';

void main() => runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/home': (context) => HomePage(),
      '/s_details': (context) => SenderDetail(),
      '/e_details': (context) => EventDetail(),
      '/r_name': (context) => RoleName(),
      '/a_roles': (context) => Home(),
      '/create_receiver': (context) => ChooseLocation(),
      '/select_receiver': (context) => SelectReceiver(),
      '/r_body': (context) => RoleBody(),
    }
));