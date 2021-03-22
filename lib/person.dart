import 'package:flutter/cupertino.dart';

class Person {
  int id;
  String firstName;
  String lastName;
  String phone;
  String address;
  String email;

  Person({this.id,this.address,this.email,this.firstName,this.lastName,this.phone});

  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(id:json['id'],address: json['address'],email: json['email'],firstName: json['firstName'],lastName: json['lastName'],phone: json['phone']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id':id,
      'firstName':firstName,
      'lastName': lastName,
      'phone': phone,
      'address': address,
      'email': email

    };
  }

}