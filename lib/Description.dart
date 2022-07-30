import 'package:flutter/material.dart';
import 'Color_and_size.dart';
import 'Product.dart';
import 'body_two.dart';
import 'constants.dart';

class Description extends StatelessWidget {
  const Description({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: kDefaultPaddin),
      child: Text(
        product.description,
        style: TextStyle(height: 1.5),
      ),
    );
  }
}

