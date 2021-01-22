import 'dart:async';

import 'package:flutter/widgets.dart';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

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
      onCreate: (db, version) {
    return db.execute(
      "CREATE TABLE sender(email TEXT PRIMARY KEY, name TEXT, phone TEXT)",
    );
  });
  print("database created and sender table created successfully");
}
