import 'package:flutter/material.dart';
import 'package:practise_app/navigationPages/contact.dart';
import 'package:practise_app/navigationPages/favorite.dart';
import 'package:practise_app/navigationPages/profile.dart';
import 'package:practise_app/helper/util.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Contacts'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _selectedIndex = 1;

  List<Widget> _navigationPages = [
        Favorite(),
        Profile(),
        Contact(),
  ];

  List<String> _titles = [
    'Favorite',
    'Profile',
    'Contact'
  ];


    @override
    Widget build(BuildContext context) {
      // This method is rerun every time setState is called, for instance as done
      // by the _incrementCounter method above.
      //
      // The Flutter framework has been optimized to make rerunning build methods
      // fast, so that you can just rebuild anything that needs updating rather
      // than having to individually change instances of widgets.
      return Scaffold(
        backgroundColor: Helper.colorFromHex('#f1f0f5'),
          appBar: AppBar(
            // Here we take the value from the MyHomePage object that was created by
            // the App.build method, and use it to set our appbar title.
            title: Text(widget.title),
          ),
          body: SafeArea(
              child: _navigationPages[_selectedIndex]
          ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorite'),

            BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'Profile'),
            BottomNavigationBarItem(icon: Icon(Icons.contact_phone), label: 'Contacts'),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      );
    }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      widget.title = _titles[index];
    });
  }


}
