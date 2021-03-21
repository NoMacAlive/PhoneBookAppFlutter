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
                      icon: Icon(Icons.message),
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
        Row(
          children: [
            Expanded(
              child: Text('Home\n 02102413844',style: TextStyle(backgroundColor: Colors.blue),)
            )
   ],
          mainAxisAlignment:
              MainAxisAlignment.center, //Center Row contents horizontally,
          crossAxisAlignment:
              CrossAxisAlignment.center, //Center Row contents vertically,
        ), //phone number

        SizedBox(
          height: 14,
        ),
        Row(
          children: [
            Text('Facetime'),
            IconButton(
                icon: Icon(Icons.video_call), onPressed: () => _buttonPressed),
            IconButton(icon: Icon(Icons.call), onPressed: () => _buttonPressed),
          ],
          mainAxisAlignment:
              MainAxisAlignment.center, //Center Row contents horizontally,
          crossAxisAlignment:
              CrossAxisAlignment.center, //Center Row contents vertically,
        ), //facetime
        SizedBox(
          height: 14,
        ),
        Row(
          children: [Text('Home'), Text('zhuguangya98@gmail.com')],
          mainAxisAlignment:
              MainAxisAlignment.center, //Center Row contents horizontally,
          crossAxisAlignment:
              CrossAxisAlignment.center, //Center Row contents vertically,
        ) //email
      ],
    );
  }

  void _buttonPressed() {}
}
