import 'package:flutter/material.dart';

class taskPage extends StatefulWidget {
  const taskPage({super.key});

  @override
  State<taskPage> createState() => _taskPageState();
}

class _taskPageState extends State<taskPage> {
  List<Color> listcolors = [
    Colors.cyanAccent,
    Colors.blueGrey,
    Colors.greenAccent,
    Colors.white30,
    Colors.yellowAccent
  ];

  List<Color> gridcolors = [
    Colors.blueGrey,
    Colors.white30,
    Colors.yellowAccent,
    Colors.cyanAccent,
    Colors.greenAccent,
    Colors.brown
  ];
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    double _text = MediaQuery.of(context).textScaleFactor;
    print("height : $_height");
    print("width : $_width");
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: const Icon(Icons.menu, size: 15, color: Colors.black),
      ),
      body: OrientationBuilder(builder: (context, orientation) {
        if (orientation == Orientation.portrait) {
          return _buildPortraitMode(725, 360);
        } else {
          return _buildLandScapeMode(360, 725);
        }
      }),
    );
  }

  _buildPortraitMode(double _height, double _width) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: _height / 3.625,
                width: _width / 1.8,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                        top: _height / 30,
                        left: _width / 30,
                        child: Container(
                            height: _height / 7.25,
                            width: _width / 3.6,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                border: Border.all(color: Colors.black)))),
                    Positioned(
                        top: _height / 15,
                        left: _width / 10,
                        child: Container(
                            height: _height / 7.25,
                            width: _width / 3.6,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 230, 24, 9),
                                border: Border.all(color: Colors.black)))),
                    Positioned(
                        top: _height / 10,
                        left: _width / 5,
                        child: Container(
                            height: _height / 7.25,
                            width: _width / 3.6,
                            decoration: BoxDecoration(
                                color: Colors.orange,
                                border: Border.all(
                                  color: Colors.black,
                                )))),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: _height / 4.4,
                  width: _width / 2.57,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: listcolors.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Container(
                            height: _height / 14.5,
                            decoration: BoxDecoration(
                                color: listcolors[index],
                                border: Border.all(color: Colors.black))),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: _height / 3.625,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: _height / 3.625,
                    width: _width / 1.8,
                    decoration: BoxDecoration(
                        color: Colors.purple[500],
                        border: Border.all(color: Colors.black)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: _height / 3.625,
                    width: _width / 1.8,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        border: Border.all(color: Colors.black)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: _height / 3.625,
                    width: _width / 1.8,
                    decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        border: Border.all(color: Colors.black)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: _height / 3.625,
                    width: _width / 1.8,
                    decoration: BoxDecoration(
                        color: Colors.lightBlueAccent,
                        border: Border.all(color: Colors.black)),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: _height / 29),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: _height / 6.04,
                width: _width / 3,
                child: SizedBox(
                  height: _height / 9.66,
                  width: _width / 4.8,
                  child: GridView.builder(
                      itemCount: gridcolors.length,
                      gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                      itemBuilder: (C, index) {
                        return Card(color: gridcolors[index]);
                      }),
                ),
              ),
              SizedBox(
                height: _height / 5.8,
                width: _width / 2.4,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: _height / 145,
                            left: _width / 72,
                            bottom: _height / 145,
                            right: _width / 72),
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.cyan,
                              border: Border.all(color: Colors.black)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: _height / 14.5,
                          decoration: BoxDecoration(
                              color: Colors.tealAccent,
                              border: Border.all(color: Colors.black)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: _height / 14.5,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              border: Border.all(color: Colors.black)),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              height: _height / 14.5,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  border: Border.all(color: Colors.black)))),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: _height / 14.5,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              border: Border.all(color: Colors.black)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
  //Landscape Mode:

  _buildLandScapeMode(double _height, double _width) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: _height / 1.8,
                width: _width / 3.625,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                        top: _height / 30,
                        left: _width / 30,
                        child: Container(
                            height: _height / 3.6,
                            width: _width / 7.25,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                border: Border.all(color: Colors.black)))),
                    Positioned(
                        top: _height / 10,
                        left: _width / 15,
                        child: Container(
                            height: _height / 3.6,
                            width: _width / 7.25,
                            decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 230, 24, 9),
                            border: Border.all(color: Colors.black)))),
                    Positioned(
                        top: _height / 5,
                        left: _width / 10,
                        child: Container(
                            height: _height / 3.6,
                            width: _width / 7.25,
                            decoration: BoxDecoration(
                                color: Colors.orange,
                                border: Border.all(
                                  color: Colors.black
                        )))),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: _height / 2.57,
                  width: _width / 4.4,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: listcolors.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Container(
                            height: _width / 14.5,
                            decoration: BoxDecoration(
                                color: listcolors[index],
                                border: Border.all(color: Colors.black))),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: _width / 3.625,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: _height / 1.8,
                    width: _width / 3.625,
                    decoration: BoxDecoration(
                        color: Colors.purple[500],
                        border: Border.all(color: Colors.black)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: _height / 1.8,
                    width: _width / 3.625,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        border: Border.all(color: Colors.black)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: _height / 1.8,
                    width: _width / 3.625,
                    decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        border: Border.all(color: Colors.black)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: _height / 1.8,
                    width: _width / 3.625,
                    decoration: BoxDecoration(
                        color: Colors.lightBlueAccent,
                        border: Border.all(color: Colors.black)),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: _height / 29),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: _height / 3,
                width: _width / 6.04,
                child: SizedBox(
                  height: _height / 4.8,
                  width: _width / 9.66,
                  child: GridView.builder(
                      itemCount: gridcolors.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2),
                      itemBuilder: (C, index) {
                        return Card(color: gridcolors[index]);
                      }),
                ),
              ),
              SizedBox(
                height: _height / 2.4,
                width: _width / 5.8,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: _height / 72,
                            left: _width / 145,
                            bottom: _height / 72,
                            right: _width / 145),
                        child: Container(
                          height: _width / 14.5,
                          decoration: BoxDecoration(
                              color: Colors.cyan,
                              border: Border.all(color: Colors.black)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: _width / 14.5,
                          decoration: BoxDecoration(
                              color: Colors.tealAccent,
                              border: Border.all(color: Colors.black)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: _width / 14.5,
                          decoration: BoxDecoration(color: Colors.grey,border: Border.all(color: Colors.black)),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              height: _width / 14.5,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  border: Border.all(color: Colors.black)))),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: _width / 14.5,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              border: Border.all(color: Colors.black)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

  // _widgetContainer(Color color) {
  //   return Padding(
  //     padding: const EdgeInsets.only(left: 15, right: 5, top: 5, bottom: 5),
  //     child: Container(
  //       height: _height / 3.625,
  //       width: _width / 1.8,
  //       decoration: BoxDecoration(
  //           color: color, border: Border.all(color: Colors.black)),
  //     ),
  //   );
  // }