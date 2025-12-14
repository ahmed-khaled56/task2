import 'package:flutter/material.dart';

class customOfferCard extends StatelessWidget {
  const customOfferCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image(
              width: 100,
              height: 100,
              image: AssetImage("lib/cores/assets/images/guave.png"),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Guava",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                  Row(
                    children: [
                      Text(
                        "Premium ",

                        style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 197, 233, 155),
                        ),
                      ),

                      Image(
                        width: 18,
                        height: 18,

                        color: Color.fromARGB(255, 197, 233, 155),
                        image: AssetImage("lib/cores/assets/images/crown.png"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "£2.75",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  Text(
                    "£2.00",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      width: 320,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.only(
          bottomEnd: Radius.circular(50),
          bottomStart: Radius.circular(25),
          topEnd: Radius.circular(25),
          topStart: Radius.circular(25),
        ),
        color: Color(0xff606063),
      ),
    );
  }
}
