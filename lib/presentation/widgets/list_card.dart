import 'package:demo_app/configs/colors.dart';
import 'package:demo_app/data/models/listModel.dart';
import 'package:flutter/material.dart';

class ListCard extends StatelessWidget {
  final ListModel list;

  const ListCard({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: DynamicColor.lightBlackClr,
      elevation: 2.0,
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: ListTile(
        title: Text(
          list.title,
          style: const TextStyle(fontWeight: FontWeight.bold, color: DynamicColor.whiteClr),
        ),
        subtitle: Text(
          list.body,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontWeight: FontWeight.w400, color: DynamicColor.whiteClr),
        ),
      ),
    );
  }
}
