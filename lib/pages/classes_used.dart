import 'package:flutter/material.dart';
import 'package:mass/db_keeper.dart';

class SenderDetails {
  String name;
  String email;
  String phone;

  SenderDetails({this.name, this.email, this.phone});

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'phone': phone,
    };
  }

  // Implement toString to make it easier to see information about
  // each dog when using the print statement.
  @override
  String toString() {
    return 'SenderDetails{name: $name, email: $email, phone: $phone}';
  }
}

class EventDetails {
  String name;
  String date;
  String venue;
  String roles;

  EventDetails({this.name, this.date, this.venue, this.roles});

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'date': date,
      'venue': venue,
      'roles': roles,
    };
  }

  // Implement toString to make it easier to see information about
  // each dog when using the print statement.
  @override
  String toString() {
    return 'EventDetails{name: $name, date: $date, venue: $venue, roles: $roles}';
  }
}
