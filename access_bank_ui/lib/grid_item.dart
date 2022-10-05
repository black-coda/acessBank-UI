// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'defaults.dart';

class GridItems extends StatelessWidget {
  const GridItems({
    super.key,
    required this.text,
    required this.iconsGrid,
    required this.iconList,
  });
  final String text;
  final IconData iconsGrid;
  final List <IconData>iconList;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4, // number of columns in each grid
      ),
      itemCount: 12,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  iconList[0],
                  color: const Color.fromARGB(255, 64, 103, 158),
                  size: 35,
                ),
                Text(text),
              ],
            ),
          ),
        );
      },
    );
  }
}
