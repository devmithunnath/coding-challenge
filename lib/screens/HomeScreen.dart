import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'package:intl/intl.dart';
import './Person.dart';
import './../widgets/CardWidget.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final String apiUrl = "https://5ca369c58bae720014a9623e.mockapi.io/data";
  List finalData;

  @override
  void initState() {
    super.initState();
    this.makeAPIcall();
  }

  Future<String> makeAPIcall() async {
    var response = await http
        .get(Uri.encodeFull(apiUrl), headers: {"Accept": "application/json"});
    setState(() {
      finalData = json.decode(response.body);
    });

    return 'Success!';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Coding Challenge'),
      ),
      body: Container(
          child: ListView.builder(
        itemCount: finalData == null ? 0 : finalData.length,
        itemBuilder: (BuildContext context, int index) {
          // Created Date
          DateTime createdDate = DateTime.parse(finalData[index]["createdAt"]);

          //Date into String
          String formattedDate = DateFormat('yyyy/MM/dd').format(createdDate);

          // Formatted Date
          formattedDate = formattedDate != "" ? formattedDate : "Unavailable";

          // Name
          String name = finalData[index]["name"] != ""
              ? finalData[index]["name"]
              : 'Unavailable';
          // Avatar
          String avatar = finalData[index]["avatar"] != ""
              ? finalData[index]["avatar"]
              : "https://cdn3.iconfinder.com/data/icons/business-avatar-1/512/10_avatar-512.png";
          // ID
          String personId =
              finalData[index]["id"] != "" ? finalData[index]["id"] : "N/A";

          return InkWell(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return Person(
                    index: index,
                    avatar: avatar,
                    name: name,
                    personId: personId,
                    date: formattedDate);
              }));
            },
            child: Container(
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    CardWidget(
                      avatar: avatar,
                      name: name,
                      subtitleData: 'Created on: ' + formattedDate,
                      radius: 20.0,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      )),
    );
  }
}
