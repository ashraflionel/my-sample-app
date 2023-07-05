import 'package:flutter/material.dart';

class ResponsiveUI extends StatelessWidget {
  ResponsiveUI({super.key});
  // ignore: prefer_typing_uninitialized_variables
  var orientation, size, height, width;

  @override
  Widget build(BuildContext context) {
    orientation = MediaQuery.of(context).orientation;
    //Size of the window
    size = MediaQuery.of(context).orientation;
    height = size.height;
    width = size.width;
    return  Scaffold(
      appBar: AppBar(
        title:const Text("Responsive"),
        backgroundColor: Colors.green,
      ),
      body:  orientation == Orientation.portrait?Container(
        color: Colors.blue,
        height: height/4,
        width: width/4,
      ):Container(
        height: height/3,
        width: width/3,
        color: Colors.red,
      ),
    );
  }
}
