import 'package:flutter/material.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: () {
          Navigator.pop(context);
        },
          color:Theme.of(context).primaryColorLight,
          icon: const Icon(Icons.close),
        ),
        IconButton(onPressed: () {},
          color:Theme.of(context).primaryColorLight,
          icon: const Icon(Icons.shopping_cart_outlined),
        ),
      ],
    );
  }
}