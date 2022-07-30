import 'package:billing_ui/Details_Screent.dart';
import 'package:billing_ui/Item_Card.dart';
import 'package:billing_ui/Product.dart';
import 'package:billing_ui/constants.dart';
import 'package:flutter/material.dart';
import 'package:billing_ui/Catagories.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            'Women',
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: kDefaultPaddin,
                  mainAxisSpacing: kDefaultPaddin,
                  childAspectRatio: 0.8,
                  crossAxisCount: 2),
              // ignore: prefer_const_constructors
              itemBuilder: (BuildContext context, index) => ItemCard(
                product: products[index],
                press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            DetailsScreen(product: products[index]))),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
