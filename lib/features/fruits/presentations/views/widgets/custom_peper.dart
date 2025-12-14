import 'package:flutter/material.dart';

class customBag extends StatelessWidget {
  const customBag({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(size: 35, color: Colors.white, Icons.shopping_bag_outlined),
      width: 50,
      height: 50,
      decoration: BoxDecoration(color: Colors.black, shape: BoxShape.circle),
    );
  }
}

class customNote extends StatelessWidget {
  const customNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "10",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
              color: Colors.black,
            ),
          ),
          Text(
            "Products",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
