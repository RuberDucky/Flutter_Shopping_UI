import 'package:flutter/material.dart';
import 'body_two.dart';
import 'constants.dart';
import 'Product.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Colors",
              ),
              Row(
                children: [
                  ColorDot(
                    color: Color(0xFF356C95),
                    isSelected: true,
                  ),
                  ColorDot(
                    color: Color(0xFFF8C078),
                    isSelected: false,
                  ),
                  ColorDot(
                    color: Color(0xFFA29B9B),
                    isSelected: false,
                  ),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: RichText(
              text: TextSpan(children: [
            TextSpan(
              style: TextStyle(color: kTextColor),
              text: "Size\n",
            ),
            TextSpan(
                text: "${product.size} cm",
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    ?.copyWith(fontWeight: FontWeight.bold))
          ])),
        )
      ],
    );
  }
}
