import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/tradewatch.dart';
import 'package:flutter_application_1/Pages/view_model.dart';
import 'package:get/get.dart';

class CommonPage extends StatefulWidget {
  const CommonPage({super.key});

  @override
  State<CommonPage> createState() => _CommonPageState();
}

class _CommonPageState extends State<CommonPage> {
  TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.cancel)),
              const Text("Filter",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 14, 13, 13))),
            ],
          ),
           const Padding(
            padding:  EdgeInsets.only(left: 20, top: 10),
            child: Text(
              'FilterList',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
                child: TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                  hintText: 'Please Enter a Name',
                  contentPadding: const EdgeInsets.all(15),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
              onChanged: (value) {},
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      side: const BorderSide(width: 1, color: Colors.black87),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        SizedBox(
                          child: Icon(Icons.menu_open_sharp,color: Colors.black87),
                        ),
                        SizedBox(width: 10),
                        Text('Cancel',
                            //selectedWidget,
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black87))
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 117, 219, 120),
                      side: const BorderSide(width: 1, color: Colors.black87),
                      elevation: 1,
                    ),
                    onPressed: () =>
                        viewModel.assigningValue(nameController.text),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        SizedBox(
                          child: Icon(
                            Icons.menu_open_sharp,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text('Save',
                            //selectedWidget,
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black87))
                      ],
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
