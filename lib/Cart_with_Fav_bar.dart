import 'package:flutter_svg/flutter_svg.dart';

import 'Cart_Counter.dart';
import 'Product.dart';
import 'constants.dart';
import 'body.dart';
import 'package:flutter/material.dart';

class CartWithFavBar extends StatelessWidget {
  const CartWithFavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CartCounter(),
        Container(
          padding: EdgeInsets.all(6),
          height: 32,
          width: 32,
          decoration:
              BoxDecoration(color: Color(0XFFFF6464), shape: BoxShape.circle),
          child: SvgPicture.asset("assets/icons/heart.svg"),
        )
      ],
    );
  }
}
