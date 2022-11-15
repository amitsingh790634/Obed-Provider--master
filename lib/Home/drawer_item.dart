import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {Key? key,
      required this.name,
      required this.image1,
      required this.onPressed})
      : super(key: key);

  final String name;
  final String image1;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: SizedBox(
        height: 30,
        child: Row(
          children: [
            Image.asset(
              image1,
              width: 30,
              height: 45,
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              name,
              style: const TextStyle(fontSize: 17, color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
