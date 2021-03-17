import 'package:flutter/material.dart';

class MainLogin extends StatelessWidget {
  const MainLogin({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Signed'),
      ),
      body: Container(
        child: Center(
          child: Text('Signed'),
        ),
      ),
    );
  }
}
