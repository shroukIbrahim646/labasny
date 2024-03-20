import 'package:flutter/material.dart';
class ChildPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Child Page'),
      ),
      body: Center(
        child: Text('This is the Child Page'),
      ),
    );
  }
}

