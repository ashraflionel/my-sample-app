import 'package:flutter/material.dart';
import 'package:flutter_application_1/Constants/dropdownPages.dart';
import 'package:flutter_application_1/Pages/tradewatch.dart';
import 'package:get/get.dart';

class ViewModel extends GetxController {
  List<PopupMenuItem> dropDownListValue1 = [
    PopupMenuItem(
        onTap: () async {
          await Future.delayed(const Duration(milliseconds: 2))
              .then((value) => Get.to(() => const CommonPage()));
        },
        child: const Text("Add a new List"))
  ];
  void assigningValue(String name) {
    if (dropDownListValue1.length <= 4) {
      viewModel.dropDownListValue1.insert(
          0,
          PopupMenuItem(
              onTap: () async {
                await Future.delayed(const Duration(milliseconds: 2))
                    .then((value) => Get.to(() => const CommonPage()));
              },
              child: Text(name)));
      Get.to(() => const LockerPage());
    } else {
      Get.snackbar(
          "Limit reached", "The List is Full Only four names will be Added");
    }
  }
}

ViewModel viewModel = Get.put(ViewModel());
