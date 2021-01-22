import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:mass/pages/classes_used.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

/*void databaseInit(Database db, int newVersion) async {
  await db.execute(
      'CREATE TABLE sender(email TEXT PRIMARY KEY, name TEXT, phone TEXT)');

  await db.execute(
      'CREATE TABLE events(name TEXT PRIMARY KEY, date TEXT, venue TEXT, roles TEXT)');
}*/

void databaseInit() async {
  // Avoid errors caused by flutter upgrade.
  // Importing 'package:flutter/widgets.dart' is required.
  WidgetsFlutterBinding.ensureInitialized();
  // Open the database and store the reference.
  final Future<Database> database = openDatabase(
    // Set the path to the database. Note: Using the `join` function from the
    // `path` package is best practice to ensure the path is correctly
    // constructed for each platform.
    join(await getDatabasesPath(), 'massmailer_database.db'),
    // When the database is first created, create a table to store dogs.
    onCreate: (db, version) async {
      db.execute(
        "CREATE TABLE sender(email TEXT PRIMARY KEY, name TEXT, phone TEXT)",
      );
    },
    version: 1,
  );

  print("database created and sender table created successfully");
}

Future<void> insertSender(SenderDetails sender) async {
  // Get a reference to the database.
  WidgetsFlutterBinding.ensureInitialized();
  // Open the database and store the reference.
  final Future<Database> database = openDatabase(
      // Set the path to the database. Note: Using the `join` function from the
      // `path` package is best practice to ensure the path is correctly
      // constructed for each platform.
      join(await getDatabasesPath(), 'massmailer_database.db'));
  final Database db = await database;

  // Insert the Dog into the correct table. You might also specify the
  // `conflictAlgorithm` to use in case the same dog is inserted twice.
  //
  // In this case, replace any previous data.
  await db.insert(
    'sender',
    sender.toMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
  print("Sender added");
  print(await ViewSender());
}

Future<List<SenderDetails>> ViewSender() async {
  // Get a reference to the database.
  WidgetsFlutterBinding.ensureInitialized();
  // Open the database and store the reference.
  final Future<Database> database = openDatabase(
      // Set the path to the database. Note: Using the `join` function from the
      // `path` package is best practice to ensure the path is correctly
      // constructed for each platform.
      join(await getDatabasesPath(), 'massmailer_database.db'));
  final Database db = await database;

  // Query the table for all The Dogs.
  final List<Map<String, dynamic>> maps = await db.query('sender');

  // Convert the List<Map<String, dynamic> into a List<Dog>.
  return List.generate(maps.length, (i) {
    return SenderDetails(
      name: maps[i]['name'],
      email: maps[i]['email'],
      phone: maps[i]['phone'],
    );
  });
}

void createEventTable() async {
  // Avoid errors caused by flutter upgrade.
  // Importing 'package:flutter/widgets.dart' is required.
  WidgetsFlutterBinding.ensureInitialized();
  // Open the database and store the reference.
  final Future<Database> database = openDatabase(
    // Set the path to the database. Note: Using the `join` function from the
    // `path` package is best practice to ensure the path is correctly
    // constructed for each platform.
    join(await getDatabasesPath(), 'massmailer2_database.db'),
    // When the database is first created, create a table to store dogs.
    onUpgrade: (db, oldVersion, newVersion) {
      db.execute(
        "CREATE TABLE events(name TEXT PRIMARY KEY, date TEXT, venue TEXT, roles TEXT)",
      );
    },
    version: 1,
  );

  print("database created and event table created successfully");
}

Future<void> insertEvent(EventDetails event) async {
  // Get a reference to the database.
  WidgetsFlutterBinding.ensureInitialized();
  // Open the database and store the reference.
  final Future<Database> database = openDatabase(
      // Set the path to the database. Note: Using the `join` function from the
      // `path` package is best practice to ensure the path is correctly
      // constructed for each platform.
      join(await getDatabasesPath(), 'massmailer2_database.db'));
  final Database db = await database;

  // Insert the Dog into the correct table. You might also specify the
  // `conflictAlgorithm` to use in case the same dog is inserted twice.
  //
  // In this case, replace any previous data.
  await db.insert(
    'events',
    event.toMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
  print("Event added");
  print(await ViewEvent());
}

Future<List<EventDetails>> ViewEvent() async {
  // Get a reference to the database.
  WidgetsFlutterBinding.ensureInitialized();
  // Open the database and store the reference.
  final Future<Database> database = openDatabase(
      // Set the path to the database. Note: Using the `join` function from the
      // `path` package is best practice to ensure the path is correctly
      // constructed for each platform.
      join(await getDatabasesPath(), 'massmailer2_database.db'));
  final Database db = await database;

  // Query the table for all The Dogs.
  final List<Map<String, dynamic>> maps = await db.query('events');

  // Convert the List<Map<String, dynamic> into a List<Dog>.
  return List.generate(maps.length, (i) {
    return EventDetails(
      name: maps[i]['name'],
      date: maps[i]['date'],
      venue: maps[i]['venue'],
      roles: maps[i]['roles'],
    );
  });
}

void createRoleTable() async {
  // Avoid errors caused by flutter upgrade.
  // Importing 'package:flutter/widgets.dart' is required.
  WidgetsFlutterBinding.ensureInitialized();
  // Open the database and store the reference.
  final Future<Database> database = openDatabase(
    // Set the path to the database. Note: Using the `join` function from the
    // `path` package is best practice to ensure the path is correctly
    // constructed for each platform.
    join(await getDatabasesPath(), 'massmailer3_database.db'),
    // When the database is first created, create a table to store dogs.
    onUpgrade: (db, oldVersion, newVersion) {
      db.execute(
        "CREATE TABLE roles(id TEXT PRIMARY KEY, name TEXT, receiver1Name TEXT, receiver1Email TEXT, receiver1Phone TEXT, receiver2Name TEXT, receiver2Email TEXT, receiver2Phone TEXT)",
      );
    },
    version: 1,
  );

  print("database created and role table created successfully");
}

Future<void> insertRole(RoleDetails role) async {
  // Get a reference to the database.
  WidgetsFlutterBinding.ensureInitialized();
  // Open the database and store the reference.
  final Future<Database> database = openDatabase(
      // Set the path to the database. Note: Using the `join` function from the
      // `path` package is best practice to ensure the path is correctly
      // constructed for each platform.
      join(await getDatabasesPath(), 'massmailer3_database.db'));
  final Database db = await database;

  // Insert the Dog into the correct table. You might also specify the
  // `conflictAlgorithm` to use in case the same dog is inserted twice.
  //
  // In this case, replace any previous data.
  await db.insert(
    'roles',
    role.toMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
  print("Roles added");
  print(await ViewRoles());
}

Future<List<RoleDetails>> ViewRoles() async {
  // Get a reference to the database.
  WidgetsFlutterBinding.ensureInitialized();
  // Open the database and store the reference.
  final Future<Database> database = openDatabase(
      // Set the path to the database. Note: Using the `join` function from the
      // `path` package is best practice to ensure the path is correctly
      // constructed for each platform.
      join(await getDatabasesPath(), 'massmailer3_database.db'));
  final Database db = await database;

  // Query the table for all The Dogs.
  final List<Map<String, dynamic>> maps = await db.query('roles');

  // Convert the List<Map<String, dynamic> into a List<Dog>.
  return List.generate(maps.length, (i) {
    return RoleDetails(
      id: maps[i]['id'],
      name: maps[i]['name'],
      receiver1Name: maps[i]['receiver1Name'],
      receiver1Email: maps[i]['receiver1Email'],
      receiver1Phone: maps[i]['receiver1Phone'],
      receiver2Name: maps[i]['receiver2Name'],
      receiver2Email: maps[i]['receiver2Email'],
      receiver2Phone: maps[i]['receiver2Phone'],
    );
  });
}

void createReceiverTable() async {
  // Avoid errors caused by flutter upgrade.
  // Importing 'package:flutter/widgets.dart' is required.
  WidgetsFlutterBinding.ensureInitialized();
  // Open the database and store the reference.
  final Future<Database> database = openDatabase(
    // Set the path to the database. Note: Using the `join` function from the
    // `path` package is best practice to ensure the path is correctly
    // constructed for each platform.
    join(await getDatabasesPath(), 'massmailer4_database.db'),
    // When the database is first created, create a table to store dogs.
    onUpgrade: (db, oldVersion, newVersion) {
      db.execute(
        "CREATE TABLE receiver(id TEXT PRIMARY KEY, name TEXT, email TEXT, phone TEXT)",
      );
    },
    version: 1,
  );

  print("database created and receiver table created successfully");
}

Future<void> insertReceiver(ReceiverDetails role) async {
  // Get a reference to the database.
  WidgetsFlutterBinding.ensureInitialized();
  // Open the database and store the reference.
  final Future<Database> database = openDatabase(
      // Set the path to the database. Note: Using the `join` function from the
      // `path` package is best practice to ensure the path is correctly
      // constructed for each platform.
      join(await getDatabasesPath(), 'massmailer4_database.db'));
  final Database db = await database;

  // Insert the Dog into the correct table. You might also specify the
  // `conflictAlgorithm` to use in case the same dog is inserted twice.
  //
  // In this case, replace any previous data.
  await db.insert(
    'receiver',
    role.toMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
  print("Receiver added");
  print(await ViewReceiver());
}

Future<List<ReceiverDetails>> ViewReceiver() async {
  // Get a reference to the database.
  WidgetsFlutterBinding.ensureInitialized();
  // Open the database and store the reference.
  final Future<Database> database = openDatabase(
      // Set the path to the database. Note: Using the `join` function from the
      // `path` package is best practice to ensure the path is correctly
      // constructed for each platform.
      join(await getDatabasesPath(), 'massmailer4_database.db'));
  final Database db = await database;

  // Query the table for all The Dogs.
  final List<Map<String, dynamic>> maps = await db.query('receiver');

  // Convert the List<Map<String, dynamic> into a List<Dog>.
  return List.generate(maps.length, (i) {
    return ReceiverDetails(
      id: maps[i]['id'],
      name: maps[i]['name'],
      email: maps[i]['email'],
      phone: maps[i]['phone'],
    );
  });
}
