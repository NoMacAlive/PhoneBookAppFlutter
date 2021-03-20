import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
      return ListView(
        children: [
          Row(
            children: [
              Text('Guangya Zhu')
            ],
          )//Photo and name
          ,
          Row(
            children: [
              IconButton(icon: Icon(Icons.message), onPressed: ()=>_buttonPressed),
              IconButton(icon: Icon(Icons.message), onPressed: ()=>_buttonPressed),
              IconButton(icon: Icon(Icons.message), onPressed: ()=>_buttonPressed),
              IconButton(icon: Icon(Icons.message), onPressed: ()=>_buttonPressed),
            ],
          )//four icons message, call, facetime, email
          ,
          Row(
            children: [
              Text('Home'),
              Text('02102413844')
            ],
          )//phone number
          ,
          Row(
            children: [
              Text('Facetime'),
              IconButton(icon: Icon(Icons.video_call), onPressed: ()=>_buttonPressed),
              IconButton(icon: Icon(Icons.call), onPressed: ()=>_buttonPressed),
            ],
          )//facetime
          ,
          Row(
            children: [
              Text('Home'),
              Text('zhuguangya98@gmail.com')
            ],
          )//email
        ],
      );
  }

  void _buttonPressed (){

  }
}
