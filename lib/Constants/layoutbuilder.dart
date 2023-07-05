import 'package:flutter/material.dart';

class layoutPage extends StatefulWidget {
  const layoutPage({super.key});

  @override
  State<layoutPage> createState() => _layoutPageState();
}

class _layoutPageState extends State<layoutPage> {
  Widget horizontal() {
    return Row(
      children: [
        Container(height: double.infinity, width: 100, color: Colors.orange),
        Container(height: double.infinity, width: 715, color: Colors.blue),
      ],
    );
  }

  Widget vertical() {
    return Column(
      children: [
        Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.orange),
        Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.blue),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(builder: (context, size) {
        if (size.maxWidth > 400) {
          return horizontal();
        } else {
          return vertical();
        }
      }),
    );
  }
}
