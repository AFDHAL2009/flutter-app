import 'package:flutter/material.dart';
import 'package:myapp/widgets/CommonTextFormField.dart';
import 'package:myapp/constants/constants.dart';

class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  int _counter = 0;
  bool _obscuredText = false;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  void testFunction() {
    setState(() {
      _counter++;
    });
    print("test function");
  }

  onChanged() {
    setState(() {
      _obscuredText = !_obscuredText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        /* appBar: AppBar(
          backgroundColor: Colors.blue,
          // title: Text('Login page'),
        )*/
        body: /*Container(
          child: Column(
            children: <Widget>[
              CommonTextFormField(
                controller: _phoneNoController,
                helperText: 'Phone Number',
                hintText: 'Enter your phone number',
                prefixIcon: Icons.phone,
              ),
              CommonTextFormField(
                controller: _passwordController,
                helperText: "Password",
                hintText: "Enter your password",
                isPassword: true,
                prefixIcon: Icons.lock_open,
              )
            ],
          ),
        )*/
            Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            width: double.infinity,
            child: Container(
              //color: Colors.red,
              margin: EdgeInsets.fromLTRB(20, 50, 0, 0),
              child: Text(
                "Welcome to",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 18, color: Color.fromARGB(255, 250, 17, 1)),
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Container(
              //color: Colors.red,
              margin: EdgeInsets.fromLTRB(20, 0, 0, 100),
              child: Text(
                "Carwash application",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
          ),
          SizedBox(
            height: 100,
            width: 320,
            child: AppConstants.textFormFieldComponent(
                _emailController,
                'Email',
                '',
                Icons.email,
                Icons.password,
                false,
                _obscuredText,
                false,
                false,
                false,
                Colors.amberAccent,
                onChanged),
          ),
          SizedBox(
            height: 100,
            width: 320,
            child: AppConstants.textFormFieldComponent(
                _passwordController,
                'Password',
                '',
                Icons.password,
                Icons.password,
                !_obscuredText,
                _obscuredText,
                true,
                false,
                true,
                Colors.amberAccent,
                onChanged),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                onPrimary: Colors.white,
                shadowColor: Colors.greenAccent,
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0)),
                minimumSize: Size(100, 40), //////// HERE
              ),
              onPressed: () => {print("email=" + _emailController.text)},
              child: Text("sumbit")),
        ],
      ),
    ));
  }
}
