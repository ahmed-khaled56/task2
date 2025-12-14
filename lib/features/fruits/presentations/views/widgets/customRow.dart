import 'package:flutter/material.dart';

class customRow2 extends StatelessWidget {
  const customRow2({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Offers", style: TextStyle(fontSize: 45, color: Colors.white)),

        Padding(
          padding: const EdgeInsets.only(top: 30, left: 120),
          child: Text(
            "see more",

            style: TextStyle(
              fontSize: 15,
              color: const Color.fromARGB(255, 197, 233, 155),
            ),
          ),
        ),
      ],
    );
  }
}

class customRow1 extends StatelessWidget {
  const customRow1({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Text("Exotic", style: TextStyle(fontSize: 45, color: Colors.white)),
            Text(
              "fruits",

              style: TextStyle(
                fontSize: 45,
                color: const Color.fromARGB(255, 197, 233, 155),
              ),
            ),
          ],
        ),

        Padding(
          padding: const EdgeInsets.only(top: 100, left: 120),
          child: Text(
            "see more",

            style: TextStyle(
              fontSize: 15,
              color: const Color.fromARGB(255, 197, 233, 155),
            ),
          ),
        ),
      ],
    );
  }
}
