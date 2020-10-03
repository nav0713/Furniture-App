import 'package:flutter/material.dart';

import '../../../constant.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  int selectedIndex = 0;
  List<String> categories = ["All", "Sofa", "Park Bench", "Armchair"];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
      height: 30,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: index == selectedIndex
                      ? Colors.white.withOpacity(.4)
                      : Colors.transparent,
                ),
                margin: EdgeInsets.only(
                    left: kDefaultPadding,
                    right:
                        index == categories.length - 1 ? kDefaultPadding : 0),
                child: Text(
                  categories[index],
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            );
          }),
    );
  }
}
