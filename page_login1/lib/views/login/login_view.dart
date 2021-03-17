import 'package:flutter/material.dart';
import 'package:page_login1/views/mainLogin/mainLogin.dart';

class PageLogin extends StatelessWidget {
  const PageLogin({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Log in',
            style: TextStyle(fontSize: 30),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height - 135,
            margin: EdgeInsets.all(10),
            child: Center(
              child: Column(
                children: [
                  Container(
                    child: Image.asset('assets/images/logoLogin.webp'),
                  ),
                  InforUserPass(),
                  SizedBox(height: 20),
                  Container(
                      child: RaisedButton(
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    child: Text(
                      'Login',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return MainLogin();
                      }));
                    },
                    color: Colors.red,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  ))
                ],
              ),
            ),
          ),
        ));
  }
}

class InforUserPass extends StatefulWidget {
  InforUserPass({Key key}) : super(key: key);

  @override
  _InforUserPassState createState() => _InforUserPassState();
}

class _InforUserPassState extends State<InforUserPass> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                hintText: 'Username'),
          ),
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                hintText: 'Password'),
          ),
        ],
      ),
    );
  }
}
