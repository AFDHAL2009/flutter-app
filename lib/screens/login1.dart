import 'package:flutter/material.dart';
import 'package:myapp/screens/login.dart';

class login1 extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login1> {
  int x = 0;
  void test() {
    print(_emailController.value.text);
    print('password=' + _passwordController.value.text);
    if (_passwordController.value.text == '123') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => login()),
      );
    } else {
      print('not authoezd');
    }
  }

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  Widget build(BuildContext build) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(children: [
            Text('data1'),
            TextFormField(
              autofocus: true,
              textAlign: TextAlign.center,
              controller: _emailController,
              decoration: InputDecoration(
                  helperText: 'Email',
                  hoverColor: Colors.blue,
                  hintText: 'Enter email'),
            ),
            Container(
                child: Center(
                    child: TextFormField(
                        autofocus: true,
                        textAlign: TextAlign.center,
                        obscureText: true,
                        controller: _passwordController,
                        decoration: InputDecoration(
                          // helperText: 'Password',
                          hoverColor: Colors.blue,
                          hintText: 'Enter password',
                          contentPadding: EdgeInsets.all(15),
                        ))),
                height: 45,
                //color: Colors.orange,

                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.orange),
                width: 250),
            TextButton(onPressed: test, child: Text('click'))
          ]),
        ));
  }
}
