import 'package:billing_ui/Add_to_cart.dart';
import 'Cart_with_Fav_bar.dart';
import 'Description.dart';
import 'Color_and_size.dart';
import 'package:billing_ui/Padding_with_image.dart';
import 'package:billing_ui/Product.dart';
import 'package:billing_ui/constants.dart';
import 'package:flutter/material.dart';

class Body_two extends StatelessWidget {
  final Product product;

  const Body_two({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: kDefaultPaddin,
                      right: kDefaultPaddin),
                  //height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(27),
                      topRight: Radius.circular(27),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      ColorAndSize(product: product),
                      SizedBox(
                        height: kDefaultPaddin / 2,
                      ),
                      Description(product: product),
                      SizedBox(
                        height: kDefaultPaddin / 2,
                      ),
                      CartWithFavBar(),
                      SizedBox(
                        height: kDefaultPaddin / 2,
                      ),
                      SizedBox(
                        height: kDefaultPaddin,
                      ),
                      SizedBox(
                        height: kDefaultPaddin,
                      ),
                      AddToCart(product: product),
                    ],
                  ),
                ),
                padding_with_image(product: product)
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorDot({
    Key? key,
    required this.color,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.only(top: kDefaultPaddin / 4, right: kDefaultPaddin / 2),
      padding: EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: isSelected ? color : Colors.transparent,
          )),
      child: DecoratedBox(
          decoration: BoxDecoration(shape: BoxShape.circle, color: color)),
    );
  }
}
