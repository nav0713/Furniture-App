import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture/constant.dart';
import 'package:furniture/models/product.dart';
import 'package:furniture/screens/details/details-screen.dart';
import 'package:furniture/screens/product/components/product-card.dart';
import 'package:furniture/screens/product/components/seachbox.dart';
import 'package:furniture/transition-animtion.dart';

import 'category-list.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          SearchBox(),
          Category(),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 70),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25))),
                ),
                ListView.builder(
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return ProductCard(
                        index: index,
                        product: products[index],
                        press: () {
                          Navigator.push(
                              context,
                              TransitionAnimation(
                                  widget: DetailsScreen(
                                product: products[index],
                              )));
                        },
                      );
                    })
              ],
            ),
          )
        ],
      ),
    );
  }
}
