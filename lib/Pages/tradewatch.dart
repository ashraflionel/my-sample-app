import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/view_model.dart';
import 'package:get/get.dart';

class LockerPage extends StatefulWidget {
  const LockerPage({super.key});

  @override
  State<LockerPage> createState() => _LockerPageState();
}

class _LockerPageState extends State<LockerPage> {
  //Grid View Variables:
  List<String> gridImages = [
    "assets/images/newspaper.jpg",
    "assets/images/compare.jpg",
    "assets/images/youtube.jpg",
    "assets/images/forum.jpg",
    "assets/images/survey.png",
    "assets/images/tradewatch.jpg",
  ];
  List<String> gridText = [
    "News",
    "Compare",
    "Videos",
    "Forum",
    "Survey",
    "Brokers"
  ];

  //Dropdown Variables:
  List<String> dropDownListValue = ["Stocks", "Crypto", "Commodity", "Forex"];
  String selectvalue = "Stocks";
  String selectvalue1 = "";
  bool extravalue = false;
  bool searchvalue = false;
  String finalvalue = "";
  String selectedWidget = "";

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Alert!!"),
          content: const Text("You are awesome!"),
          actions: [
            MaterialButton(
              child: const Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

//Alert Dialog Box
  // void _showBox(BuildContext ctx) {
  //   showDialog(
  //       context: ctx,
  //       builder: (_) => AlertDialog(
  //             actions: [
  //               TextButton(
  //                   onPressed: () {
  //                     Navigator.pop(context);
  //                     Navigator.push(
  //                         context,
  //                         MaterialPageRoute(
  //                             builder: (context) => const CommonPage()));
  //                   },
  //                   child: Row(
  //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                     children: const [
  //                       Text(
  //                         'Add a New List',
  //                         style: TextStyle(
  //                             fontSize: 15,
  //                             fontWeight: FontWeight.bold,
  //                             color: Colors.black),
  //                       ),
  //                       SizedBox(width: 10),
  //                       Icon(Icons.add_circle_outlined, color: Colors.green)
  //                     ],
  //                   )),
  //             ],
  //           ));
  // }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Locker",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                    const Spacer(),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite_outline,
                            size: 25,
                            color: Color.fromARGB(255, 127, 194, 162))),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.flag_circle,
                          size: 25, color: Color.fromARGB(255, 127, 194, 162)),
                    ),
                  ],
                ),
              ),
              //DropDown:
              SizedBox(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        selectvalue == "Stocks"
                            ? Container(
                                height: 50,
                                width: 50,
                                child: Icon(Icons.money_off),
                              )
                            : selectvalue == "Crypto"
                                ? Container(
                                    height: 50,
                                    width: 50,
                                    child: Icon(Icons.chat_rounded),
                                  )
                                : selectvalue == "Commodity"
                                    ? Container(
                                        height: 50,
                                        width: 50,
                                        child:
                                            const Icon(Icons.currency_bitcoin),
                                      )
                                    : Container(
                                        height: 50,
                                        width: 50,
                                        child:
                                            const Icon(Icons.shape_line_sharp),
                                      ),
                        const SizedBox(height: 15),
                        DropdownButton(
                          items: dropDownListValue.map((item) {
                            return DropdownMenuItem(
                              value: item,
                              child: Text(item,
                                  style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500)),
                            );
                          }).toList(),
                          value: selectvalue,
                          onChanged: (value) {
                            setState(() {
                              extravalue = false;
                              searchvalue = false;
                              selectvalue = value!;
                              finalvalue = selectvalue;
                            });
                          },
                          icon: const Icon(Icons.arrow_downward),
                          underline: Container(color: Colors.transparent),
                          iconSize: 25,
                        )
                      ],
                    ),
                    GetBuilder<ViewModel>(
                        init: ViewModel(),
                        builder: (viewModel) {
                          return PopupMenuButton(
                              child: Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.menu_open_outlined,
                                      color: Colors.black,
                                    ),
                                    const SizedBox(width: 5),
                                    Text(
                                      "All $selectvalue",
                                      style: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                              itemBuilder: (BuildContext context) {
                                return viewModel.dropDownListValue1;
                              });
                        }),
                  ],
                ),
              ),

              const SizedBox(height: 15),

              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 2 / 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                    ),
                    itemCount: gridImages.length,
                    itemBuilder: (context, index) {
                      return Stack(
                        children: <Widget>[
                          Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(15)),
                              image: DecorationImage(
                                image: AssetImage(gridImages[index]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              ),
                              child: BackdropFilter(
                                filter:
                                    ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                                child: Container(
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(15),
                                        bottomRight: Radius.circular(15),
                                      ),
                                      color: const Color.fromARGB(
                                              255, 212, 208, 208)
                                          .withOpacity(0.3)),
                                  child: Center(
                                    child: Text(
                                      gridText[index],
                                      style: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
