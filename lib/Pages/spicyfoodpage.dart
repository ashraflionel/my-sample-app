import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class FoodOrderPage extends StatefulWidget {
  const FoodOrderPage({super.key});

  @override
  State<FoodOrderPage> createState() => _FoodOrderPageState();
}

class _FoodOrderPageState extends State<FoodOrderPage> {
  List<String> mart = [
    "Groceries &\n Essentials",
    "Fruits &\n Vegetables ",
    "Freshly\n Chicken",
    "Restaurant",
  ];
  List<String> martimages = [
    "assets/images/grocery.png",
    "assets/images/fruits.png",
    "assets/images/chicken.png",
    "assets/images/restaurant.png",
  ];

  List<String> food = [
    "Indian Food",
    "KFC Dishes",
    "Dominoss Pizza",
    "Spicy Garlic Noodles",
    "Havmour IceCreams",
    "Thalapakatti Briyani"
  ];

  List<String> foodImages = [
    "https://c4.wallpaperflare.com/wallpaper/869/719/717/cuisine-food-india-indian-wallpaper-preview.jpg",
    "https://res.cloudinary.com/swiggy/image/upload/f_auto,q_auto,fl_lossy/bdcd233971b7c81bf77e1fa4471280eb",
    "https://www.countytimes.co.uk/resources/images/16019613/",
    "https://lindseyeatsla.com/wp-content/uploads/2021/11/LindseyEats_Spicy_Garlic_Noodles-3.jpg",
    "https://b.zmtcdn.com/data/pictures/8/18757508/3925353a271d3d085c2aae70c48c50b0.jpg",
    "https://www.yummyoyummy.com/wp-content/uploads/2021/01/DSC_0809-scaled.jpg",
  ];

  List<String> restaurant = [
    "Taj Hotel",
    "Grand Star",
    "RedChilli Foods",
    "Indian Restaurant",
    "A2B Hotel",
    "Night Affairs"
  ];

  List<String> restaurantImages = [
    "https://www.yummyoyummy.com/wp-content/uploads/2021/01/DSC_0809-scaled.jpg",
    "https://b.zmtcdn.com/data/pictures/8/18757508/3925353a271d3d085c2aae70c48c50b0.jpg",
    "https://lindseyeatsla.com/wp-content/uploads/2021/11/LindseyEats_Spicy_Garlic_Noodles-3.jpg",
    "https://c4.wallpaperflare.com/wallpaper/869/719/717/cuisine-food-india-indian-wallpaper-preview.jpg",
    "https://www.countytimes.co.uk/resources/images/16019613/",
    "https://res.cloudinary.com/swiggy/image/upload/f_auto,q_auto,fl_lossy/bdcd233971b7c81bf77e1fa4471280eb",
  ];

  List<String> Choicechipss = [
    "Regular",
    "Max",
    "Security",
    "Anti virus",
    "Cusiness",
    "Regular1",
    "Max1",
    "Security1",
    "Anti virus1",
    "Cusiness1",
  ];

  List<String> selectedFeedbackList = [];

  bool _shimmerloading = true;
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5)).then((value) {
      setState(() {
        _shimmerloading = false;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    print("height: ${height}");
    print("width:${width}");
    return Scaffold(
      backgroundColor: Colors.white,
      body: OrientationBuilder(builder: (context, orientation) {
        if (orientation == Orientation.portrait) {
          return _buildPortraitMode(725, 360);
        } else {
          return Text("Do not Rotate your Phone");
        }
      }),
    );
  }

  _buildchipForRow(String label) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Chip(
        label: Text(
          label,
          style: const TextStyle(fontSize: 15, color: Colors.white),
        ),
      ),
    );
  }

  _buildPortraitMode(double height, double width) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.location_history, size: 25, color: Colors.black),
                  SizedBox(width: 10),
                  Padding(
                    padding: EdgeInsets.all(3.0),
                    child: Text('Kumily Kerala 685506',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            decorationStyle: TextDecorationStyle.dashed,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                  ),

                  Spacer(),

                  Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50.0),
                        child: Image.asset(
                          "assets/images/profile.png",
                          height: 50.0,
                          width: 50.0,
                          fit: BoxFit.cover,
                        ),
                      )),
                  // Container(
                  //   height: 40,
                  //   width: 40,
                  //   decoration: BoxDecoration(
                  //     image: DecorationImage(
                  //         image: AssetImage('assets/images/profile.png'),
                  //         fit: BoxFit.cover),
                  //     shape: BoxShape.circle,
                  //     boxShadow: [
                  //       BoxShadow(
                  //         color: Colors.black45,
                  //         offset: Offset(1.0, 5.0),
                  //         blurRadius: 1.0,
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            ),

            //Search Bar
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: Container(
                padding: const EdgeInsets.all(10.0),
                height: 50,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 250, 247, 247),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: Colors.black,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.search,
                        size: 25, color: Color.fromARGB(255, 240, 127, 119)),
                    hintText: "Search Food or restaurants",
                    hintStyle: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 240, 127, 119)),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),

            //Choice Chips:
            MultiSelectChip(
              Choicechipss,
              onSelectionChanged: (selectedList) {
                setState(() {
                  selectedFeedbackList = selectedList;
                });
              },
            ),

            _shimmerloading
                ? Shimmer.fromColors(
                    baseColor: Colors.grey.withOpacity(0.15),
                    highlightColor: Colors.black45,
                    period: const Duration(seconds: 2),
                    direction: ShimmerDirection.ltr,
                    enabled: true,
                    child: GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        maxCrossAxisExtent: 180),
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return Container(
                            color: Colors.grey,
                            height: 150,
                            width: 150,
                          );
                        }))
                : Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithMaxCrossAxisExtent(
                                mainAxisSpacing: 1,
                                crossAxisSpacing: 1,
                                maxCrossAxisExtent: 180),
                        itemCount: martimages.length,
                        itemBuilder: (BuildContext ctx,index) {
                          return Stack(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  height: height / 5.36,
                                  width: width / 2.56,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10)),
                                    image: DecorationImage(
                                        image: AssetImage(martimages[index]),
                                        fit: BoxFit.cover),
                                  ),
                                  child: BackdropFilter(
                                      filter: ImageFilter.blur(
                                          sigmaX: 600.0, sigmaY: 1000.0)),
                                ),
                              ),
                              Positioned(
                                  top: 35,
                                  left: 15,
                                  child: Text(
                                    mart[index],
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: index % 2 == 0
                                            ? Colors.white
                                            : Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )),
                              Positioned(
                                top: 100,
                                left: 20,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50.0),
                                  child: Image.asset(
                                    "assets/images/arrow_forward.png",
                                    height: 25.0,
                                    width: 25.0,
                                    fit: BoxFit.contain,
                                  ),
                                ),

                                // child: Container(
                                //     height: height / 32.2,
                                //     width: width / 15.36,
                                //     decoration: const BoxDecoration(
                                //       color: Colors.white,
                                //       shape: BoxShape.circle,
                                //     ),
                                //     child: const Center(
                                //       child: Icon(Icons.arrow_forward,
                                //           color: Colors.black, size: 15),
                                //     )
                                //     ),
                              ),
                            ],
                          );
                        }),
                  ),

            const SizedBox(height: 10.53),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 142, 231, 145), // background
                    onPrimary: Colors.white, // foreground
                  ),
                  onPressed: () {},
                  child: const Text('More'),
                ),
              ),
            ),
            const SizedBox(height: 10.53),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Eat What makes You Happy",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            ),

            Container(
              height: 150,
              child: ListView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: foodImages.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: 100,
                    margin: const EdgeInsets.only(right: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.white,
                          backgroundImage: NetworkImage(foodImages[index]),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          food[index],
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Container(
                height: 200,
                width: double.infinity,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://cdn.dribbble.com/users/3906861/screenshots/10737890/pizza_4x.jpg"),
                        fit: BoxFit.cover)),
              ),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text(
                  "Popular Restaurants around you",
                  style: TextStyle(fontSize: 15, color: Colors.red),
                ),
                Text(
                  "View All",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                )
              ],
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Container(
                height: 200,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Colors.black38, blurRadius: 01),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Stack(
                  children: [
                    Container(
                      height: 150,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.white),
                      child: const ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        child: Image(
                          image: NetworkImage(
                              "https://cdnb.artstation.com/p/assets/images/images/029/904/513/large/palak-srivastava-icecream-banner.jpg?1598986541"),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    Positioned(
                        top: 85,
                        right: 15,
                        child: Container(
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 255, 248, 248),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: const Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Text("20 Mins"),
                            ))),
                    Positioned(
                      bottom: 10,
                      left: 10,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Have a Happy life with Havmour Ice Creams",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text(
                  "Discover Restaurants for All ",
                  style: TextStyle(fontSize: 15, color: Colors.red),
                ),
                Text(
                  "View All",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                )
              ],
            ),
            const SizedBox(height: 10),

            Container(
              height: 150,
              child: ListView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: restaurantImages.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 150,
                    width: 200,
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(color: Colors.black54, blurRadius: 01),
                        ],
                        borderRadius:
                            const BorderRadius.all(Radius.circular(25)),
                        image: DecorationImage(
                            image: NetworkImage(restaurantImages[index]),
                            fit: BoxFit.cover)),
                    child: Center(
                        child: Text(restaurant[index],
                            style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                            overflow: TextOverflow.ellipsis)),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  // _buildLandScapeMode(double height, double width) {
  //   return SingleChildScrollView(
  //     child: Column(
  //       mainAxisAlignment: MainAxisAlignment.start,
  //       children: [
  //         Padding(
  //           padding: const EdgeInsets.all(8.0),
  //           child: Row(
  //             children: const [
  //               Icon(Icons.location_history, size: 35, color: Colors.black),
  //               SizedBox(width: 10),
  //               Text('Kumily Kerala 685506',
  //                   style: TextStyle(
  //                       fontSize: 14,
  //                       fontWeight: FontWeight.bold,
  //                       color: Colors.black)),
  //               Spacer(),
  //               CircleAvatar(
  //                 radius: 25,
  //                 backgroundImage: NetworkImage(
  //                     'https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80'),
  //                 backgroundColor: Colors.white,
  //               ),
  //             ],
  //           ),
  //         ),

  //         //Search Bar
  //         Padding(
  //           padding: const EdgeInsets.all(8.0),
  //           child: Container(
  //             padding: const EdgeInsets.all(10.0),
  //             height: 50,
  //             width: double.infinity,
  //             decoration: BoxDecoration(
  //                 color: Colors.white,
  //                 borderRadius: const BorderRadius.all(Radius.circular(10)),
  //                 border: Border.all(width: 1, color: Colors.grey)),
  //             child: TextFormField(
  //               keyboardType: TextInputType.text,
  //               cursorColor: Colors.black,
  //               decoration: const InputDecoration(
  //                 icon: Icon(Icons.search,
  //                     size: 25, color: Color.fromARGB(255, 240, 127, 119)),
  //                 hintText: "Search Food or Restaurants",
  //                 hintStyle: TextStyle(
  //                     fontSize: 14, color: Color.fromARGB(255, 240, 127, 119)),
  //                 border: InputBorder.none,
  //               ),
  //             ),
  //           ),
  //         ),

  //         //Choice Chips:
  //         Padding(
  //           padding: const EdgeInsets.all(5.0),
  //           child: SingleChildScrollView(
  //             scrollDirection: Axis.horizontal,
  //             child: Row(
  //               children: [
  //                 _buildchipForRow('Max Safety'),
  //                 _buildchipForRow('Pro'),
  //                 _buildchipForRow('Cuisiness'),
  //                 _buildchipForRow('Regular'),
  //                 _buildchipForRow('Security'),
  //               ],
  //             ),
  //           ),
  //         ),

  //         Padding(
  //           padding: const EdgeInsets.only(left: 15),
  //           child: GridView.builder(
  //               physics: NeverScrollableScrollPhysics(),
  //               shrinkWrap: true,
  //               gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
  //                   maxCrossAxisExtent: 200, childAspectRatio: 1 / 1),
  //               itemCount: mimages.length,
  //               itemBuilder: (BuildContext ctx, index) {
  //                 return Stack(
  //                   children: [
  //                     Align(
  //                       alignment: Alignment.centerLeft,
  //                       child: Container(
  //                         height: width / 5.36,
  //                         width: height / 2.56,
  //                         decoration: BoxDecoration(
  //                           borderRadius:
  //                               const BorderRadius.all(Radius.circular(25)),
  //                           image: DecorationImage(
  //                               image: NetworkImage(mimages[index]),
  //                               fit: BoxFit.cover),
  //                         ),
  //                         child: BackdropFilter(
  //                             filter: ImageFilter.blur(
  //                                 sigmaX: 600.0, sigmaY: 1000.0)),
  //                       ),
  //                     ),
  //                     Positioned(
  //                         top: 25,
  //                         left: 15,
  //                         child: Text(
  //                           mart[index],
  //                           style: TextStyle(
  //                               fontSize: 15,
  //                               color: index % 2 == 0
  //                                   ? Colors.white
  //                                   : Colors.white,
  //                               fontWeight: FontWeight.bold),
  //                         )),
  //                     Positioned(
  //                       top: 80,
  //                       left: 20,
  //                       child: Container(
  //                           height: width / 32.2,
  //                           width: height / 15.36,
  //                           decoration: const BoxDecoration(
  //                             color: Colors.white,
  //                             shape: BoxShape.circle,
  //                           ),
  //                           child: const Center(
  //                             child: Icon(Icons.arrow_forward,
  //                                 color: Colors.black, size: 15),
  //                           )),
  //                     ),
  //                   ],
  //                 );
  //               }),
  //         ),
  //         const SizedBox(width: 10.53),
  //         Padding(
  //           padding: const EdgeInsets.only(right: 20),
  //           child: Align(
  //             alignment: Alignment.centerRight,
  //             child: ElevatedButton(
  //               style: ElevatedButton.styleFrom(
  //                 primary: Color.fromARGB(255, 142, 231, 145), // background
  //                 onPrimary: Colors.white, // foreground
  //               ),
  //               onPressed: () {},
  //               child: const Text('More'),
  //             ),
  //           ),
  //         ),
  //         const SizedBox(height: 10.53),
  //         Padding(
  //           padding: const EdgeInsets.only(left: 10),
  //           child: const Align(
  //             alignment: Alignment.centerLeft,
  //             child: Text(
  //               "Eat What makes You Happy",
  //               style: TextStyle(
  //                   fontSize: 15,
  //                   fontWeight: FontWeight.bold,
  //                   color: Colors.black),
  //             ),
  //           ),
  //         ),

  //         Container(
  //           height: 150,
  //           child: ListView.builder(
  //             padding: EdgeInsets.zero,
  //             shrinkWrap: true,
  //             scrollDirection: Axis.horizontal,
  //             itemCount: foodImages.length,
  //             itemBuilder: (BuildContext context, int index) {
  //               return Container(
  //                 width: 100,
  //                 margin: const EdgeInsets.only(right: 15),
  //                 child: Column(
  //                   mainAxisAlignment: MainAxisAlignment.center,
  //                   crossAxisAlignment: CrossAxisAlignment.center,
  //                   children: [
  //                     CircleAvatar(
  //                       radius: 40,
  //                       backgroundColor: Colors.white,
  //                       backgroundImage: NetworkImage(foodImages[index]),
  //                     ),
  //                     const SizedBox(height: 10),
  //                     Text(
  //                       food[index],
  //                       overflow: TextOverflow.ellipsis,
  //                     ),
  //                   ],
  //                 ),
  //               );
  //             },
  //           ),
  //         ),
  //         Padding(
  //           padding: const EdgeInsets.only(left: 15, right: 15),
  //           child: Container(
  //             height: 150,
  //             width: double.infinity,
  //             decoration: const BoxDecoration(
  //                 borderRadius: BorderRadius.all(Radius.circular(15)),
  //                 image: DecorationImage(
  //                     image: NetworkImage(
  //                         "https://cdn.dribbble.com/users/3906861/screenshots/10737890/pizza_4x.jpg"),
  //                     fit: BoxFit.cover)),
  //           ),
  //         ),
  //         const SizedBox(height: 15),
  //         Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceAround,
  //           children: const [
  //             Text(
  //               "Popular Restaurants around you",
  //               style: TextStyle(fontSize: 15, color: Colors.red),
  //             ),
  //             Text(
  //               "View All",
  //               style: TextStyle(
  //                   fontSize: 15,
  //                   fontWeight: FontWeight.bold,
  //                   color: Colors.black),
  //             )
  //           ],
  //         ),
  //         const SizedBox(height: 15),
  //         Padding(
  //           padding: const EdgeInsets.only(left: 15, right: 15),
  //           child: Container(
  //             height: 200,
  //             width: double.infinity,
  //             decoration: const BoxDecoration(
  //               color: Colors.white,
  //               boxShadow: [
  //                 BoxShadow(color: Colors.black38, blurRadius: 01),
  //               ],
  //               borderRadius: BorderRadius.all(Radius.circular(15)),
  //             ),
  //             child: Stack(
  //               children: [
  //                 Container(
  //                   height: 130,
  //                   width: double.infinity,
  //                   decoration: const BoxDecoration(
  //                       borderRadius: BorderRadius.all(Radius.circular(10)),
  //                       color: Colors.white),
  //                   child: const ClipRRect(
  //                     borderRadius: BorderRadius.only(
  //                       topLeft: Radius.circular(10),
  //                       topRight: Radius.circular(10),
  //                     ),
  //                     child: Image(
  //                       image: NetworkImage(
  //                           "https://cdnb.artstation.com/p/assets/images/images/029/904/513/large/palak-srivastava-icecream-banner.jpg?1598986541"),
  //                       fit: BoxFit.cover,
  //                     ),
  //                   ),
  //                 ),
  //                 Positioned(
  //                     top: 85,
  //                     right: 15,
  //                     child: Container(
  //                         decoration: const BoxDecoration(
  //                             color: Color.fromARGB(255, 255, 248, 248),
  //                             borderRadius:
  //                                 BorderRadius.all(Radius.circular(10))),
  //                         child: const Padding(
  //                           padding: EdgeInsets.all(5.0),
  //                           child: Text("20 Mins"),
  //                         ))),
  //                 Positioned(
  //                   bottom: 10,
  //                   left: 10,
  //                   child: Column(
  //                     crossAxisAlignment: CrossAxisAlignment.start,
  //                     children: const [
  //                       Text("Havmour Ice Creams",
  //                           style: TextStyle(
  //                               fontSize: 15,
  //                               fontWeight: FontWeight.bold,
  //                               color: Colors.black87)),
  //                       Text(
  //                           "Make every event a celebration with Havmor\n ice creams",
  //                           style: TextStyle(
  //                               fontSize: 15,
  //                               fontWeight: FontWeight.normal,
  //                               color: Colors.black87)),
  //                     ],
  //                   ),
  //                 ),
  //               ],
  //             ),
  //           ),
  //         ),
  //         const SizedBox(height: 15),

  //         Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceAround,
  //           children: const [
  //             Text(
  //               "Discover Restaurants for All",
  //               style: TextStyle(fontSize: 15, color: Colors.red),
  //             ),
  //             Text(
  //               "View All",
  //               style: TextStyle(
  //                   fontSize: 15,
  //                   fontWeight: FontWeight.bold,
  //                   color: Colors.black),
  //             )
  //           ],
  //         ),
  //         const SizedBox(height: 10),

  //         Container(
  //           height: 150,
  //           child: ListView.builder(
  //             padding: EdgeInsets.zero,
  //             shrinkWrap: true,
  //             scrollDirection: Axis.horizontal,
  //             itemCount: restaurantImages.length,
  //             itemBuilder: (BuildContext context, int index) {
  //               return Container(
  //                 height: 150,
  //                 width: 200,
  //                 margin: const EdgeInsets.all(8),
  //                 decoration: BoxDecoration(
  //                     boxShadow: const [
  //                       BoxShadow(color: Colors.black54, blurRadius: 01),
  //                     ],
  //                     borderRadius: const BorderRadius.all(Radius.circular(25)),
  //                     image: DecorationImage(
  //                         image: NetworkImage(restaurantImages[index]),
  //                         fit: BoxFit.cover)),
  //                 child: Center(
  //                     child: Text(restaurant[index],
  //                         style: const TextStyle(
  //                             fontSize: 15,
  //                             fontWeight: FontWeight.bold,
  //                             color: Colors.white),
  //                         overflow: TextOverflow.ellipsis)),
  //               );
  //             },
  //           ),
  //         ),
  //         const SizedBox(height: 20),
  //       ],
  //     ),
  //   );
  // }
}

class MultiSelectChip extends StatefulWidget {
  final List<String> reportList;
  final Function(List<String>) onSelectionChanged;

  MultiSelectChip(this.reportList, {required this.onSelectionChanged});

  @override
  _MultiSelectChipState createState() => _MultiSelectChipState();
}

class _MultiSelectChipState extends State<MultiSelectChip> {
  List<String> selectedChoices = [];

  _buildChoiceList() {
    List<Widget> choices = [];

    widget.reportList.forEach((item) {
      choices.add(Container(
        padding: const EdgeInsets.all(2.0),
        child: ChoiceChip(
          backgroundColor: Color.fromARGB(255, 252, 249, 249),
          selectedColor: Color.fromARGB(255, 145, 228, 148),
          label: Text(
            item,
            style: TextStyle(fontSize: 13, color: Colors.black),
          ),
          selected: selectedChoices.contains(item),
          onSelected: (selected) {
            setState(() {
              selectedChoices.contains(item)
                  ? selectedChoices.remove(item)
                  : selectedChoices.add(item);
              widget.onSelectionChanged(selectedChoices);
            });
          },
        ),
      ));
    });
    return choices;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> choicesList = _buildChoiceList();
    return Container(
      height: 50,
      child: ListView.builder(
        itemCount: choicesList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return choicesList[index];
        },
      ),
    );
  }
}
