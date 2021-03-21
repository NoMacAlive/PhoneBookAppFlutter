import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practise_app/helper/util.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Row(
          children: [
            Icon(
              Icons.account_circle,
              size: 70,
            ),
          ],
          mainAxisAlignment:
              MainAxisAlignment.center, //Center Row contents horizontally,
          crossAxisAlignment:
              CrossAxisAlignment.center, //Center Row contents vertica,
        ),
        Row(
          children: [
            Text(
              'Guangya Zhu',
              style: TextStyle(fontSize: 25),
            ),
          ],
          mainAxisAlignment:
              MainAxisAlignment.center, //Center Row contents horizontally,
          crossAxisAlignment:
              CrossAxisAlignment.center, //Center Row contents vertically,
        ),
        SizedBox(
          height: 14,
        ),
        Row(
          children: [
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.white,
                  ),
                  child: IconButton(
                      icon: Icon(
                        Icons.message,
                      ),
                      onPressed: () => _buttonPressed),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.white,
                  ),
                  child: IconButton(
                      icon: Icon(Icons.call), onPressed: () => _buttonPressed),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.white,
                  ),
                  child: IconButton(
                      icon: Icon(Icons.video_call),
                      iconSize: 30,
                      onPressed: () => _buttonPressed),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.white,
                  ),
                  child: IconButton(
                      icon: Icon(Icons.email), onPressed: () => _buttonPressed),
                ),
              ],
            ),
          ],
          mainAxisAlignment:
              MainAxisAlignment.spaceEvenly, //Center Row contents horizontally,
          crossAxisAlignment:
              CrossAxisAlignment.start, //Center Row contents vertically,
        ), //four icons message, call, facetime, email
        SizedBox(
          height: 14,
        ),
        Container(
          padding: const EdgeInsets.only(left: 35, top: 12, bottom: 12),
          margin: EdgeInsets.only(left: 30, right: 30),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.white,
          ),
          child: Row(
            children: [
              Expanded(
                /*1*/
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /*2*/
                    Container(
                      child: Text(
                        'Home',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Text(
                      '02102413844',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ],
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment:
                MainAxisAlignment.center, //Center Row contents horizontally,
            crossAxisAlignment:
                CrossAxisAlignment.center, //Center Row contents vertically,
          ), //phone number
        ),

        SizedBox(
          height: 14,
        ),
        Container(
          padding: const EdgeInsets.only(left: 35, top: 10, bottom: 10),
          margin: EdgeInsets.only(left: 30, right: 30),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.white,
          ),
          child: Row(
            children: [
              Expanded(
                /*1*/
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /*2*/
                    Container(
                      child: Text(
                        'Facetime',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: IconButton(
                  icon: Icon(Icons.video_call),
                  onPressed: () => _buttonPressed,
                ),
                decoration: BoxDecoration(
                  color: Helper.colorFromHex('#efeff1'),
                  // border: new Border.all(
                  //     color: Colors.green,
                  //     width: 5.0,
                  //     style: BorderStyle.solid),
                  // borderRadius: new BorderRadius.all(Radius.circular(20)),
                  shape: BoxShape.circle,
                  // boxShadow: [
                  //   new BoxShadow(
                  //     color: Colors.red,
                  //     offset: new Offset(20.0, 10.0),
                  //   )
                  // ],
                ),
                margin: EdgeInsets.only(right: 10),
              ),
              Container(
                child: IconButton(
                    icon: Icon(Icons.call), onPressed: () => _buttonPressed),
                decoration: BoxDecoration(
                  color: Helper.colorFromHex('#efeff1'),
                  // border: new Border.all(
                  //     color: Colors.green,
                  //     width: 5.0,
                  //     style: BorderStyle.solid),
                  // borderRadius: new BorderRadius.all(Radius.circular(20)),
                  shape: BoxShape.circle,
                  // boxShadow: [
                  //   new BoxShadow(
                  //     color: Colors.red,
                  //     offset: new Offset(20.0, 10.0),
                  //   )
                  // ],
                ),
                margin: EdgeInsets.only(right: 10),
              ),
            ],
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment:
                MainAxisAlignment.center, //Center Row contents horizontally,
            crossAxisAlignment:
                CrossAxisAlignment.center, //Center Row contents vertically,
          ), //phone number
        ),
        SizedBox(
          height: 14,
        ),
        Container(
          padding: const EdgeInsets.only(left: 35, top: 12, bottom: 12),
          margin: EdgeInsets.only(left: 30, right: 30),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.white,
          ),
          child: Row(
            children: [
              Expanded(
                /*1*/
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /*2*/
                    Container(
                      child: Text(
                        'Home',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Text(
                      'zhuguangya98@gmail.com',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ],
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment:
            MainAxisAlignment.center, //Center Row contents horizontally,
            crossAxisAlignment:
            CrossAxisAlignment.center, //Center Row contents vertically,
          ), //phone number
        ),
      ],
    );
  }

  void _buttonPressed() {}
}
