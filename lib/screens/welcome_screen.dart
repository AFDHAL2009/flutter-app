import 'package:flutter/material.dart';
import 'package:myapp/screens/home.dart';
import 'package:myapp/widgets/custom_button.dart';

class welcome_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
          /* child: RaisedButton(
          child: Text('Click Here'),
          color: Colors.orangeAccent,
          onPressed: () {
            /* Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondRoute()),
            );*/
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => home(
                        screenTitle: "My page tile",
                        titleIcon: Icons.check,
                        tileTitle: "Tile tile",
                        subTitle:
                            "application flutter for reusable componentts or widgets",
                        cancelButtonAction: () => print('Cancel button'),
                        proceedButtonAction: () => print('Proceed button'),
                      )),
            );
          },
        ),*/

          child: custom_button(
              title: "custom button",
              color1: Colors.blue,
              onPressed: () => {print("custom buton event")})),
    );
  }
}
