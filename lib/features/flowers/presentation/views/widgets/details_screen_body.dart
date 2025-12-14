import 'package:flutter/material.dart';
import 'package:taske2/cores/widgets/custom_hill.dart';
import 'package:taske2/features/flowers/data/models/card_model.dart';
import 'package:taske2/features/flowers/presentation/views/widgets/custom_number.dart';
import 'package:taske2/features/flowers/presentation/views/widgets/custom_scend_number.dart';
import 'package:taske2/features/fruits/presentations/views/home2_view.dart';

class DetailsScreenBody extends StatelessWidget {
  const DetailsScreenBody({super.key, required this.cardModel});
  final CardModel cardModel;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,

      //alignment: Alignment.topRight,
      children: [
        Positioned(
          left: 15,
          top: 430,
          child: Column(
            children: [
              CircleAvatar(
                radius: 15,
                backgroundColor: Colors.lightGreen,
                child: Text("M", style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: 5),
              CircleAvatar(
                radius: 15,
                backgroundColor: const Color.fromARGB(255, 182, 209, 151),
                child: Text("L", style: TextStyle(fontWeight: FontWeight.w300)),
              ),
              SizedBox(height: 5),
              CircleAvatar(
                backgroundColor: const Color.fromARGB(255, 182, 209, 151),
                radius: 15,

                child: Text(
                  "XL",

                  style: TextStyle(fontWeight: FontWeight.w300),
                ),
              ),
            ],
          ),
        ),

        Positioned(
          left: 40,
          top: -200,
          child: Transform.rotate(
            angle: 170,

            child: Image(
              width: 500,
              height: 800,
              image: AssetImage("lib/cores/assets/images/strelt.png"),
            ),
          ),
        ),
        Positioned(
          top: 480,
          left: 270,

          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 148, 183, 108),

              shape: BoxShape.circle,
            ),
            child: Icon(
              color: const Color.fromARGB(255, 131, 130, 130),
              size: 40,
              Icons.keyboard_arrow_right_sharp,
            ),
          ),
        ),

        Positioned(
          left: 120,
          top: 620,
          child: Center(
            child: Column(
              children: [
                Text(
                  cardModel.name!,
                  style: TextStyle(
                    color: Colors.black,

                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "BIRD OF PARADISE",
                  style: TextStyle(
                    color: Colors.grey,

                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                  ),
                ),

                Text(
                  cardModel.price!,
                  style: TextStyle(
                    color: Colors.black,

                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            width: double.infinity,
            height: 330,
            child: CustomPaint(painter: CustomNumber()),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Home2View()),
            );
          },
          child: customHill(icon: Icons.shopping_bag),
        ),
        Positioned(
          right: 229,
          top: 680,
          child: Transform.rotate(
            angle: 90 * 3.1415926535 / 180,
            child: customHill(
              angle: -90 * 3.1415926535 / 180,
              isRoutated: true,
              iconColor: Colors.black,
              iconSize: 36,
              hieght: 200,
              width: 170,
              icon: Icons.person_sharp,
            ),
          ),
        ),
        Positioned(
          left: 229,
          top: 680,
          child: Transform.rotate(
            angle: -90 * 3.1415926535 / 180,
            child: customHill(
              angle: 90 * 3.1415926535 / 180,
              isRoutated: true,
              iconSize: 36,
              hieght: 200,
              width: 170,
              icon: Icons.home_rounded,
              iconColor: Colors.black,
            ),
          ),
        ),
        Positioned(
          left: 90,
          top: 745,
          child: SizedBox(
            width: 230,
            height: 140,
            child: CustomPaint(
              child: Padding(
                padding: EdgeInsets.only(bottom: 25),
                child: Center(
                  child: Text(
                    cardModel.nimber!,

                    style: TextStyle(
                      fontSize: 35,

                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
              painter: CustomScendNumber(),
            ),
          ),
        ),
        Positioned(
          left: 60,
          top: 850,
          child: Icon(color: Colors.black, size: 50, Icons.add),
        ),
        Positioned(
          left: 300,
          top: 850,
          child: Icon(color: Colors.black, size: 50, Icons.remove),
        ),
      ],
    );
  }
}
