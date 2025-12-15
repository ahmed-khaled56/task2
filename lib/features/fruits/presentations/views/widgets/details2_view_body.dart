import 'package:flutter/material.dart';
import 'package:taske2/features/fruits/presentations/views/widgets/customSelect.dart';
import 'package:taske2/features/fruits/presentations/views/widgets/custom_peper.dart';

class Details2ViewBody extends StatelessWidget {
  const Details2ViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          fit: BoxFit.cover,

          width: double.infinity,
          height: MediaQuery.sizeOf(context).height,
          image: AssetImage("lib/cores/assets/images/back2.png"),
        ),

        Positioned(
          top: 90,
          left: 100,
          child: Image(
            fit: BoxFit.fitWidth,

            width: 400,
            height: 700,
            image: AssetImage("lib/cores/assets/images/dragon.png"),
          ),
        ),

        Positioned(top: 70, left: 270, child: customNote()),

        Positioned(top: 40, left: 295, child: customBag()),
        Positioned(
          top: 40,
          left: 330,
          child: CircleAvatar(
            radius: 6,
            backgroundColor: const Color.fromARGB(255, 197, 233, 155),
          ),
        ),
        Positioned(
          top: 70,
          left: 50,
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.white,
            child: Icon(color: Colors.black, Icons.arrow_back),
          ),
        ),
        Positioned(top: 133, left: 50, child: CustomPremium()),
        Positioned(
          top: 165,
          left: 50,
          child: Text(
            "Exotic fruits",
            style: TextStyle(fontSize: 50, color: Colors.white),
          ),
        ),

        Positioned(
          top: 220,
          left: 50,
          child: Text(
            "Pitaya",
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 50,
              color: Colors.white,
            ),
          ),
        ),
        Positioned(top: 330, left: 50, right: 195, child: CustomButton()),

        Positioned(
          top: 665,
          left: 30,
          child: CircleAvatar(
            radius: 6,
            backgroundColor: const Color.fromARGB(255, 197, 233, 155),
          ),
        ),
        Positioned(
          top: 650,
          left: 45,
          child: Column(
            children: [
              Text(
                "SELECT",
                style: TextStyle(fontSize: 15, color: Colors.white60),
              ),
              Text(
                "QUNTITY",
                style: TextStyle(fontSize: 18, color: Colors.white60),
              ),
            ],
          ),
        ),
        Positioned(top: 730, left: 280, child: CustomCrat()),

        Positioned(
          top: 740,
          left: -50,
          child: CircleAvatar(
            radius: 140,
            backgroundColor: Colors.transparent,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 2),
              ),
            ),
          ),
        ),
        Positioned(
          top: 785,
          left: -20,
          child: CircleAvatar(
            child: Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "£24,5",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    "5 Pack",
                    style: TextStyle(color: Colors.black, fontSize: 13),
                  ),
                ],
              ),
            ),
            radius: 100,
            backgroundColor: Colors.white,
          ),
        ),

        Positioned(
          top: 720,
          left: 75,
          child: CircleAvatar(
            child: Text(
              "1",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            radius: 24,
            backgroundColor: Colors.grey,
          ),
        ),
        Positioned(
          top: 820,
          left: 200,
          child: CircleAvatar(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("10", style: TextStyle(fontSize: 20, color: Colors.black)),
                Text(
                  "Pack",
                  style: TextStyle(fontSize: 10, color: Colors.black),
                ),
              ],
            ),
            radius: 24,
            backgroundColor: Colors.grey,
          ),
        ),
        Positioned(
          top: 725,
          left: 110,
          child: Transform.rotate(
            angle: 45 * 3.1415926535 / 180,
            child: SizedBox(
              width: 100,
              height: 150,
              child: CustomPaint(painter: Customselect()),
            ),
          ),
        ),
        Positioned(
          top: 750,
          left: 159,
          child: CircleAvatar(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 1.5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "5",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  Text(
                    "Pack",
                    style: TextStyle(fontSize: 10, color: Colors.black),
                  ),
                ],
              ),
            ),
            radius: 24,
            backgroundColor: Colors.white,
          ),
        ),
      ],
    );
  }
}

class CustomCrat extends StatelessWidget {
  const CustomCrat({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 130,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(13),
      ),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.black,
              child: Center(
                child: Icon(color: Colors.white, Icons.shopping_cart),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Center(
                child: Text(
                  "Add to order",
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: GestureDetector(
        onTap: () {},
        child: Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.only(left: 45),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(
              color: const Color.fromARGB(255, 197, 233, 155),
              width: 2,
            ),
            color: Colors.white.withOpacity(0),
          ),
          child: const Text(
            "Nutrition",
            style: TextStyle(
              color: Color.fromARGB(255, 197, 233, 155),
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}

class CustomPremium extends StatelessWidget {
  const CustomPremium({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
