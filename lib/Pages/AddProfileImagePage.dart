import 'package:flutter/material.dart';

class AddProfileImagePage extends StatefulWidget {
  const AddProfileImagePage({super.key});

  @override
  State<AddProfileImagePage> createState() => _AddProfileImagePageState();
}

class _AddProfileImagePageState extends State<AddProfileImagePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text("Image"),
        ),
      ),
    );
  }
}
