import 'package:flutter/material.dart';
import 'package:taske2/cores/widgets/custom_lock.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Container(
            width: 340,
            height: 130,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 37, right: 18),
                  child: Image(
                    image: AssetImage(
                      "lib/cores/assets/images/bannaanTree.png",
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.star, color: Color(0xfffbc407), size: 13),
                        Icon(Icons.star, color: Color(0xfffbc407), size: 13),
                        Icon(Icons.star, color: Color(0xfffbc407), size: 13),
                        Icon(Icons.star, color: Color(0xfffbc407), size: 13),
                        Icon(Icons.star, size: 13, color: Colors.grey),
                      ],
                    ),
                    Text(
                      "Bannan Tree",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "£78",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.lightGreen,
                          radius: 6,
                          child: Center(child: Icon(Icons.remove, size: 10)),
                        ),

                        Text("2X"),
                        CircleAvatar(
                          backgroundColor: Colors.lightGreen,
                          radius: 6,
                          child: Center(child: Icon(Icons.add, size: 10)),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 62.5),
                  child: CustomPaint(
                    child: SizedBox(
                      width: 60,
                      height: 24,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Icon(size: 15, Icons.shopping_bag_rounded),
                        ),
                      ),
                    ),
                    size: Size(60, 24),
                    painter: SmoothCapsulePainter(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
