import 'package:flutter/material.dart';

class PageLogin extends StatelessWidget {
  const PageLogin({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  child: Text("DEMO"),
                  alignment: Alignment.center,
                ),
                Align(
                  child: Text('Login Screen 1'),
                  alignment: Alignment.center,
                ),
                SizedBox(
                  height: 20,
                ),
                Text('Email'),
                InputUsername(),
                Text(
                  'Password',
                ),
                InputPass(),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Colors.blue),
                  width: 380,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('LOGIN', style: TextStyle(color: Colors.white)),
                      RaisedButton(
                        color: Colors.white,
                        onPressed: () {},
                        textColor: Colors.blue,
                        child: Icon(Icons.arrow_forward),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                      )
                    ],
                  ),
                  //color: Colors.red,
                ),
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.blue[900]),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Colors.blue[900]),
                  width: 380,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'LOGIN WITH FACEBOOK',
                        style: TextStyle(color: Colors.white),
                      ),
                      RaisedButton(
                        color: Colors.white,
                        onPressed: () {},
                        textColor: Colors.blue[900],
                        child: Text(
                          'f',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                      )
                    ],
                  ),
                  //color: Colors.red,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "DON'T HAVE AN ACCOUNT?",
                  style: TextStyle(color: Colors.blue),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

class InputUsername extends StatefulWidget {
  InputUsername({Key key}) : super(key: key);

  @override
  _InputUsernameState createState() => _InputUsernameState();
}

class _InputUsernameState extends State<InputUsername> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        child: TextField(
          decoration: InputDecoration(
              hintText: 'Enter your email',
              prefixIcon: Icon(Icons.account_circle_outlined),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)))),
        ));
  }
}

class InputPass extends StatefulWidget {
  InputPass({Key key}) : super(key: key);

  @override
  _InputPassState createState() => _InputPassState();
}

class _InputPassState extends State<InputPass> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        child: TextField(
          decoration: InputDecoration(
              hintText: 'Enter your password',
              prefixIcon: Icon(Icons.lock_open_outlined),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)))),
        ));
  }
}
