import 'package:flutter/material.dart';

import '../../constant.dart';

class ProductPoster extends StatelessWidget {
  const ProductPoster({
    Key key,
    @required this.size,
    this.image,
  }) : super(key: key);

  final Size size;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.width * .8,
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: size.width * .7,
            width: size.width * .7,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.white),
          ),
          Hero(
            tag: image,
            child: Image.asset(
              image,
              height: size.width * .7,
              width: size.width * .7,
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}
