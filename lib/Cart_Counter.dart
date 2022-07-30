import 'package:flutter/material.dart';
import 'Product.dart';
import 'constants.dart';
import 'body_two.dart';

class CartCounter extends StatefulWidget {
  CartCounter({Key? key}) : super(key: key);

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItem = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: <Widget>[
            SizedBox(
                height: 32,
                width: 40,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(23))),
                  onPressed: () {
                    if (numOfItem > 1) {
                      setState(() {
                        numOfItem--;
                      });
                    }
                  },
                  child: Icon(Icons.remove),
                )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
              child: Text(
                numOfItem.toString().padLeft(2, "0"),
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            SizedBox(
                height: 32,
                width: 40,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(23))),
                  onPressed: () {
                    setState(() {
                      numOfItem++;
                    });
                  },
                  child: Icon(Icons.add),
                )),
          ],
        ),
      ],
    );
  }

  // SizedBox BuildOutlineButton(
  //     {required IconData icon, required Function press}) {
  //   return SizedBox(
  //       height: 32,
  //       width: 40,
  //       child: OutlinedButton(
  //         style: OutlinedButton.styleFrom(
  //             padding: EdgeInsets.zero,
  //             shape: RoundedRectangleBorder(
  //                 borderRadius: BorderRadius.circular(23))),
  //         onPressed: () => press,
  //         child: Icon(icon),
  //       ));
  // }
}
