import 'package:flutter/material.dart';
import 'package:myapp/widgets/CommonTextFormField.dart';
import 'package:myapp/constants/constants.dart';

class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  final _formKey = GlobalKey<FormState>();
  final textController = TextEditingController();
  bool isObscured = false;
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

  onChanged() {
    setState(() {
      isObscured = !isObscured;
    });
  }

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  Widget build(BuildContext build) {
    return Scaffold(
        body: Container(
            // color: Colors.green,
            child: Form(
                key: _formKey,
                child: Container(
                  //  color: Colors.blue,
                  child: Column(children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        //  color: Colors.blue,
                        padding: EdgeInsets.fromLTRB(20, 60, 0, 0),
                        child: Text(
                          'Welcome to',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        //  color: Colors.blue,
                        padding: EdgeInsets.fromLTRB(20, 0, 0, 20),
                        child: Text(
                          'carWash application',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(5, 5, 5, 50),
                      child: Image(
                        image: AssetImage('assets/images/logo.png'),
                        height: 150,
                      ),
                    ),
                    Container(
                      width: 300,
                      height: 70,
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: "Email",
                            hintText: 'Enter email',
                            helperText: " ",
                            //fillColor: Colors.white30,
                            // contentPadding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                            // filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30))),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter email';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      height: 70,
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter password';
                          }
                          return null;
                        },

                        decoration: InputDecoration(
                            labelText: "Password",
                            hintText: 'Enter password',
                            helperText: " ",

                            // fillColor: Colors.white30,
                            // filled: true,
                            suffixIcon: IconButton(
                              icon: Icon(
                                isObscured
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                              onPressed: onChanged,
                              color: Colors.pink[400],
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25))),
                        // maxLength: 6,
                        obscureText: !isObscured,
                      ),
                    ),
                    Container(
                        width: 300,
                        height: 20,
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                        // color: Color.fromARGB(31, 11, 52, 232),
                        child: TextButton(
                          onPressed: () => print('forget pass'),
                          child: Text('Forget password',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 11, color: Colors.black54)),
                        )),
                    Container(
                        width: 300,
                        // height: 20,
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                        // color: Color.fromARGB(31, 11, 52, 232),
                        child: TextButton(
                          onPressed: () => print('register'),
                          child: Text('SignUp',
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 11, color: Colors.blue)),
                        )),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 104, 76, 175),
                          foregroundColor: Colors.white,
                          shadowColor: Colors.greenAccent,
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32.0)),
                          minimumSize: Size(200, 40), //////// HERE
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {}
                        },
                        child: Text("SignIn")),
                  ]),
                ))));
  }
}
