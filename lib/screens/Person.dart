import 'package:flutter/material.dart';
import './../widgets/TextWidget.dart';
import './../widgets/HeroBanner.dart';
import './../widgets/Line.dart';

class Person extends StatelessWidget {
  const Person(
      {this.index, this.personId, this.name, this.avatar, this.date, Key key})
      : super(key: key);
  final int index;
  final String personId;
  final String name;
  final String avatar;
  final String date;

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(name != '' ? name : 'Coding Challenge'),
        ),
        body: ListView(
          children: <Widget>[
            HeroBanner(
              avatar: avatar != ''
                  ? avatar
                  : 'https://cdn3.iconfinder.com/data/icons/business-avatar-1/512/10_avatar-512.png',
              index: index,
              height: 300.0,
            ),
            Container(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(children: <Widget>[
                      Line(),
                      TextWidget(
                        alignment: TextAlign.left,
                        data: 'User Details',
                        color: Colors.black,
                        fontsize: 25.0,
                      ),
                      Line(),
                    ]),
                    SizedBox(
                      height: 30.0,
                    ),
                    TextWidget(
                      alignment: TextAlign.left,
                      data: personId != '' ? 'ID: 00' + personId : 'ID: N/A',
                      color: Colors.black,
                      fontsize: 22.0,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextWidget(
                      alignment: TextAlign.left,
                      data: name != '' ? 'Name: ' + name : 'Name: Unavailable',
                      color: Colors.black,
                      fontsize: 22.0,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextWidget(
                      alignment: TextAlign.left,
                      data: date != ''
                          ? 'Created on: ' + date
                          : 'Created on: N/A',
                      color: Colors.black,
                      fontsize: 22.0,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                  ],
                ),
              ),
          ],
        ));
  }
}
