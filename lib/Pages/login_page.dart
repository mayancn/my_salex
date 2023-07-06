import 'package:flutter/material.dart';
import '../api/auth.dart';
import './home_page.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController(text: 'admin');
  final _passwordController = TextEditingController(text: 'admin');

  Map userdata = {};

  validateLogin() async {
    //Authentication

    Navigator.pushReplacement(
      context, MaterialPageRoute(
        builder: (context) => HomePage()
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.purpleAccent,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.amberAccent,
                      radius: 40.0,
                      child: Icon(
                        Icons.fitness_center,
                        color: Colors.black12,
                        size: 40.0,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 12.0),
                    ),
                    Text(
                      'MySalex',
                      style: TextStyle(
                        color: Colors.white10,
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        TextFormField(
                          controller: _usernameController,
                          decoration: InputDecoration(labelText: 'Username'),
                          validator: (value) =>
                              value.isEmpty ? 'Username cant be empty' : null,
                          onSaved: (value) =>
                              userdata['username'] = value.trim(),
                        ),
                        TextFormField(
                          controller: _passwordController,
                          decoration: InputDecoration(labelText: 'Password'),
                          validator: (value) =>
                              value.isEmpty ? 'Password cant be empty' : null,
                          obscureText: true,
                          onSaved: (value) =>
                              userdata['password'] = value.trim(),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: RaisedButton(
                            child: Text(
                              'Login',
                              style: TextStyle(fontSize: 20.0),
                            ),
                            onPressed: validateLogin,
                            
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        )
      ],
    ));
  }
}