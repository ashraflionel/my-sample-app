import 'package:flutter/material.dart';

class smartLightPage extends StatefulWidget {
  const smartLightPage({super.key});

  @override
  State<smartLightPage> createState() => _smartLightPageState();
}

class _smartLightPageState extends State<smartLightPage> {
  var islightON = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            "Smart Home App",
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey),
          ),
          const SizedBox(height: 25),
          islightON
              ? Container(
                  height: 150,
                  width: 150,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Image.asset("assets/images/on.jpg"))
              : Container(
                  height: 150,
                  width: 150,
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Image.asset("assets/images/off.jpg")),
          TextButton(
            onPressed: () {
              setState(() {
                islightON = !islightON;
              });
            },
            child: const Text("Change"),
          )
        ],
      ),
    );
  }
}
