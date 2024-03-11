import 'package:flutter/material.dart';

class home extends StatelessWidget {
  final String screenTitle;
  final IconData titleIcon;
  final String tileTitle;
  final String subTitle;
  final void Function()? cancelButtonAction;
  final void Function()? proceedButtonAction;

  home(
      {@required this.screenTitle = '',
      required this.titleIcon,
      @required this.tileTitle = '',
      @required this.subTitle = '',
      @required this.cancelButtonAction,
      @required this.proceedButtonAction});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(screenTitle)),
      body: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Icon(titleIcon),
              title: Text(tileTitle),
              subtitle: Text(subTitle),
            ),
            ButtonTheme(
                child: ButtonBar(
              children: <Widget>[],
            ))
          ],
        ),
      ),
    );
  }
}
