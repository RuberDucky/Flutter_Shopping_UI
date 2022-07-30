import 'package:flutter/material.dart';
import 'Product.dart';
import 'constants.dart';
import 'body.dart';

class ItemCard extends StatelessWidget {
// ItemCard(this.press);

  final Product product;
  final Function press;
  const ItemCard({Key? key, required this.press, required this.product})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => press(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(kDefaultPaddin),
              height: 180,
              width: 160,
              decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.circular(27),
              ),
              child:
                  Hero(tag: "${product.id}", child: Image.asset(product.image)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
            child: Text(
              product.title,
              style: TextStyle(color: kTextColor),
            ),
          ),
          Text(
            "\$${product.price}",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
