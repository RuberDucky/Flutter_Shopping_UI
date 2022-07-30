import 'package:flutter/material.dart';
import 'Product.dart';
import 'body_two.dart';
import 'constants.dart';

class padding_with_image extends StatelessWidget {
  const padding_with_image({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPaddin,
        vertical: kDefaultPaddin,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: kDefaultPaddin,
              //vertical: kDefaultPaddin
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Airostcastic HandBags",
                  style: TextStyle(color: Colors.white),
                ),
                Text(product.title,
                    style: Theme.of(context).textTheme.headline4?.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: kDefaultPaddin,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          //left: kDefaultPaddin
                          ),
                      child: RichText(
                          text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Price\n",
                          ),
                          TextSpan(
                              text: '\$${product.price}',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4
                                  ?.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold))
                        ],
                      )),
                    ),
                    SizedBox(
                      width: kDefaultPaddin,
                    ),
                    Expanded(
                        child: Hero(
                      tag: "${product.id}",
                      child: Image.asset(
                        product.image,
                        fit: BoxFit.fill,
                      ),
                    ))
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: kDefaultPaddin,
          ),
        ],
      ),
    );
  }
}
