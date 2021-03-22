import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io'; //for the DatabaseFileRoutines to save and read files
import 'package:path_provider/path_provider.dart'; //for the above class to retrieve the local path to the document directory.
import 'dart:convert'; //for database class to decode and encode JSON
import 'dart:async';
import 'package:intl/intl.dart';
import 'package:practise_app/helper/util.dart' as helper;
import 'package:practise_app/person.dart';


class DatabaseFileRoutines {
  //uses the File class to retrive the device local document directory and save and read the data file
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  //calls _localPath and returns the persistance file
  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/phoneBookData.json');
  }

  //read from file and return a future string containing the JSON information
  Future<String> readContacts() async {
    try {
      final file = await _localFile;
      //if no such file, create one
      if (!file.existsSync()) {
        print("File does not Exist: ${file.absolute}");
        await writeJournals('{"contacts": []}');
      }
      // Read the file
      String contents = await file.readAsString();
      return contents;
    } catch (e) {
      print("error readJournals: $e");
      return "";
    }
  }

  Future<File> writeJournals(String json) async {
    final file = await _localFile;
    // Write the file
    return file.writeAsString('$json');
  }
}

// To read and parse from JSON data - databaseFromJson(jsonString);
Database databaseFromJson(String str) {
  final dataFromJson = json.decode(str);
  return Database.fromJson(dataFromJson);
}

// To save and parse to JSON Data - databaseToJson(jsonString);
String databaseToJson(Database data) {
  final dataToJson = data.toJson();
  return json.encode(dataToJson);
}

class Database {
  //responsible for encoding and decoding the JSON file and mapping it to a List
  List<Person> contacts;
  Database({
    this.contacts,
  });

  // To read and parse from JSON data - databaseFromJson(jsonString);
  Database databaseFromJson(String str) {
    final dataFromJson = json.decode(str);
    return Database.fromJson(dataFromJson);
  }

  /*factory method returns a database instance*/
  factory Database.fromJson(Map<String, dynamic> json) => Database(
    contacts: List<Person>.from(json["contacts"].map((x) => Person.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "contact": List<dynamic>.from(contacts.map((x) => x.toJson())),
  };
}
