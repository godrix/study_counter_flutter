import 'package:flutter/material.dart';

class FloatAction extends StatelessWidget {
  final Icon icon;
  final Color iconColor;
  final Function onPress;

  FloatAction({Key key, this.icon, this.iconColor, this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: FloatingActionButton(
        onPressed: onPress,
        tooltip: 'Increment',
        child: icon,
        backgroundColor: iconColor,
      ),
    );
  }
}
