import 'package:flutter/material.dart';

class GroceryListItem extends StatelessWidget {
  const GroceryListItem(
      {super.key,
      required this.color,
      required this.name,
      required this.quantity});

  final Color color;
  final String name;
  final int quantity;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(name),
      leading: Container(
        width: 24,
        height: 24,
        color: color,
      ),
      trailing: Text(quantity.toString()),
    );

    // return Container(
    //   padding: const EdgeInsets.all(10),
    //   child: Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //     children: [
    //       Row(
    //         children: [
    //           Icon(
    //             Icons.square,
    //             color: color,
    //           ),
    //           const SizedBox(
    //             width: 20,
    //           ),
    //           Text(name),
    //         ],
    //       ),
    //       Text(quantity.toString())
    //     ],
    //   ),
    // );
  }
}
