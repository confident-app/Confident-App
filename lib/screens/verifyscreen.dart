import 'package:flutter/material.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({Key? key}) : super(key: key);

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  @override
  void initState() {
    //ToDo: check if email is verified
    super.initState();
  }

  @override
  void dispose() {
    //ToDo: close timer
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          elevation: 10,
          backgroundColor: Colors.black45,
          title: Text('Flutter Firebase Authentication')),
      body: Center(
        child: Text('Email verification'),
      ),
    );
  }
}
