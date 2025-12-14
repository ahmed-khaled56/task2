import 'package:flutter/material.dart';

class custom2Card extends StatelessWidget {
  final String name;
  final String price;

  const custom2Card({super.key, required this.name, required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(name, style: TextStyle(fontSize: 20, color: Colors.white)),
            Row(
              children: [
                Text(
                  "Premium ",

                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 197, 233, 155),
                  ),
                ),

                Image(
                  color: Color.fromARGB(255, 197, 233, 155),
                  image: AssetImage("lib/cores/assets/images/crown.png"),
                ),
              ],
            ),
            Text(price, style: TextStyle(fontSize: 20, color: Colors.white)),
          ],
        ),
      ),
      width: 150,
      height: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.only(
          bottomEnd: Radius.circular(75),
          bottomStart: Radius.circular(25),
          topEnd: Radius.circular(25),
          topStart: Radius.circular(25),
        ),
        color: Color(0xff606063),
      ),
    );
  }
}
