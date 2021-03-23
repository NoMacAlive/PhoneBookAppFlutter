import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practise_app/helper/database.dart';
import 'package:practise_app/helper/util.dart';
import 'package:practise_app/person.dart';

class Contact extends StatefulWidget {
  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  Database _db;
  List<Person> _displayedContacts = [];
  TextEditingController _searchController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FutureBuilder(
        initialData: [],
        future: _loadContacts(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return !snapshot.hasData
              ? Center(child: CircularProgressIndicator())
              : _buildListViewSeparated(snapshot);
        });
  }

  void filterSearchResults(String query) {
    print('query is: '+query);
    Map<String,Person> dummySearchMap = new Map();
    List<Person> dummyListData = [];
    List<Person> duplicateItems;
    duplicateItems ??= this._displayedContacts;
    dummySearchMap = Map.fromIterable(_db.contacts, key: (v) => v.lastName, value: (v) => v);
    print(dummySearchMap);
    if(query.isNotEmpty) {
      dummySearchMap.keys.forEach((item) {
        if(item.contains(query)) {
          dummyListData.add(dummySearchMap[item]);
        }
      });
      setState(() {
        this._displayedContacts.clear();
        this._displayedContacts.addAll(dummyListData);
        print(_displayedContacts);
        dummyListData.clear();
      });
      return;
    } else {
      setState(() {
        this._displayedContacts.clear();
        this._displayedContacts.addAll(_db.contacts);
      });
    }
  }

  Future<List<Person>> _loadContacts() async {
    //real implementation should contain reading file from local document storage
    //this is a mock data implementation
    this._db = await Database.fromJson(Helper.json);
    this._displayedContacts ??= this._db.contacts;
    return _db.contacts;
  }

  _buildListViewSeparated(AsyncSnapshot snapshot) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            onChanged: (value) {
              filterSearchResults(value);
            },
            controller: _searchController,
            decoration: InputDecoration(
                labelText: "Search",
                hintText: "Search",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25.0)))),
          ),
        ),
        Expanded(
            child: ListView.separated(
          itemCount: _displayedContacts.length,
          itemBuilder: (BuildContext context, int index) {
            String _firstName = _displayedContacts[index].firstName;
            String _lastName = _displayedContacts[index].lastName;
            return Card(
                child: ListTile(
              leading: Column(
                children: [
                  Text(_firstName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      )),
                  Text(_lastName,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue))
                ],
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
              title: Text(''),
            ));
          },
          separatorBuilder: (BuildContext context, int index) {
            // return Divider(
            //   color: Colors.grey,
            // );
            return SizedBox(
              height: 0,
            );
          },
        ))
      ],
    );
  }
}
