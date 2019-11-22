import 'package:flutter/material.dart';

class HeroBanner extends StatelessWidget {
  const HeroBanner({this.index, this.avatar, this.height, Key key})
      : super(key: key);

  final String avatar;
  final int index;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: height != null ? height : 250.0,
        child: Hero(
          tag: index,
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: new BoxDecoration(
                gradient: new LinearGradient(
                    begin: FractionalOffset.bottomRight,
                    end: FractionalOffset.topLeft,
                    colors: [
                      Colors.red,
                      Colors.black,
                    ]),
                borderRadius: BorderRadius.circular(0),
                color: Colors.blue,
                image: DecorationImage(
                    image: new NetworkImage(avatar != ''
                        ? avatar
                        : 'https://cdn3.iconfinder.com/data/icons/business-avatar-1/512/10_avatar-512.png'),
                    fit: BoxFit.cover)),
          ),
        ),
      ),
    );
  }
}
