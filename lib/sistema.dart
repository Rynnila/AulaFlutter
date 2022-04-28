import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/menu.dart';

class Sistema extends StatelessWidget {
  const Sistema({ Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sistema'),
      ),
      drawer: NewMenu(),
    );
  }
}