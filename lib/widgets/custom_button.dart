import 'package:flutter/material.dart';

class custom_button extends StatelessWidget {
  final String title;
  final Color? color1;
  final void Function()? onPressed;
  custom_button({
    @required this.title = '',
    @required this.color1,
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 200.0,
        height: 100.0,
        color: Colors.green,
        alignment: Alignment.center,
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(35),
        child: TextButton(
          onPressed: onPressed,
          child: Text(title),
          //style: style.,
        ),
      ),
    );
  }
}
