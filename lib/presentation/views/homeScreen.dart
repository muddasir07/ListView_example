// ignore_for_file: file_names

import 'package:demo_app/configs/colors.dart';
import 'package:demo_app/viewmodels/home_view_model.dart';
import 'package:demo_app/presentation/widgets/list_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  final HomeViewModel homeViewModel = Get.put(HomeViewModel());

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'ListView Example',
            style: TextStyle(color: DynamicColor.whiteClr),
          )),
      body: Obx(() {
        if (homeViewModel.listItems.isEmpty) {
          return const Center(child: CircularProgressIndicator());
        } else if (homeViewModel.listItems.isEmpty) {
          return const Text("NO DATA");
        } else {
          return ListView.builder(
            itemCount: homeViewModel.listItems.length,
            itemBuilder: (context, index) {
              return ListCard(list: homeViewModel.listItems[index]);
            },
          );
        }
      }),
    );
  }
}
