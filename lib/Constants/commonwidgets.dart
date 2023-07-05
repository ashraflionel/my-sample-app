import 'package:flutter/material.dart';

class CommonContainer extends StatelessWidget {
  const CommonContainer({super.key,required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: width < 400 ? height / 3.625 : height * 0.2,
      width: width / 1.8,
      decoration:
          BoxDecoration(color: color, border: Border.all(color: Colors.black)),
    );
  }
}
