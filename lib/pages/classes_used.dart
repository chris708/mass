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

class RoleDetails {
  String id;
  String name;
  String receiver1Name;
  String receiver1Email;
  String receiver1Phone;
  String receiver2Name;
  String receiver2Email;
  String receiver2Phone;

  RoleDetails(
      {this.id,
      this.name,
      this.receiver1Name,
      this.receiver1Email,
      this.receiver1Phone,
      this.receiver2Name,
      this.receiver2Email,
      this.receiver2Phone});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'receiver1Name': receiver1Name,
      'receiver1Email': receiver1Email,
      'receiver1Phone': receiver1Phone,
      'receiver2Name': receiver2Name,
      'receiver2Email': receiver2Email,
      'receiver2Phone': receiver2Phone,
    };
  }

  // Implement toString to make it easier to see information about
  // each dog when using the print statement.
  @override
  String toString() {
    return 'RoleDetails{id: $id, name: $name, receiver1Name: $receiver1Name, receiever1Email: $receiver1Email, receiver1Phone: $receiver1Phone, receiver2Name: $receiver2Name, receiever2Email: $receiver2Email, receiver2Phone: $receiver2Phone}';
  }
}
