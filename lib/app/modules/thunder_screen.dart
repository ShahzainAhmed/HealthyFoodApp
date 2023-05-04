import 'package:flutter/material.dart';

class ThunderScreen extends StatefulWidget {
  const ThunderScreen({super.key});

  @override
  State<ThunderScreen> createState() => ThunderScreenState();
}

class ThunderScreenState extends State<ThunderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Thunder Screen"),
      ),
    );
  }
}
