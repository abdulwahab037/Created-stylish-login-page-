import 'package:flutter/material.dart';

class home extends StatelessWidget {
  final String email, password;
  home(this.email, this.password);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(child: Text('$email/$password')),
    );
  }
}
