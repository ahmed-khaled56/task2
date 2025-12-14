import 'package:flutter/material.dart';

class CustomBottommBar extends StatelessWidget {
  const CustomBottommBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.only(
          bottomEnd: Radius.circular(35),
          bottomStart: Radius.circular(35),
          topEnd: Radius.circular(35),
          topStart: Radius.circular(35),
        ),
        color: Colors.black,
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10, right: 40, left: 40),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "Home",
              style: TextStyle(color: Color.fromARGB(255, 197, 233, 155)),
            ),
            Spacer(),
            Text("Search", style: TextStyle(color: Colors.white)),
            Spacer(),
            Text("Premium", style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
