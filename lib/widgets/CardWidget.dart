import 'package:flutter/material.dart';
import './TextWidget.dart';

class CardWidget extends StatelessWidget {
  const CardWidget(
      {this.name, this.avatar, this.subtitleData, this.radius, Key key})
      : super(key: key);

  final String name;
  final String avatar;
  final String subtitleData;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
                radius: radius != null ? radius : 0.0,
                backgroundImage: NetworkImage(avatar != ''
                    ? avatar
                    : 'https://cdn3.iconfinder.com/data/icons/business-avatar-1/512/10_avatar-512.png')),
            title: TextWidget(
              fontsize: 20.0,
              data: name != '' ? name : 'Unavailable!',
              alignment: TextAlign.left,
            ),
            subtitle: TextWidget(
              fontsize: 12.0,
              data: subtitleData != '' ? subtitleData : 'Unavailable!',
              alignment: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
