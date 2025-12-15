import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:taske2/features/fruits/presentations/views/details2_view.dart';
import 'package:taske2/features/fruits/presentations/views/widgets/custom2_card.dart';
import 'package:taske2/features/fruits/presentations/views/widgets/customRow.dart';
import 'package:taske2/features/fruits/presentations/views/widgets/custom_bottom_bar.dart';
import 'package:taske2/features/fruits/presentations/views/widgets/custom_offerCard.dart';
import 'package:taske2/features/fruits/presentations/views/widgets/custom_peper.dart';
import 'package:taske2/features/fruits/presentations/views/widgets/custom_person.dart';

class Home2ViewBody extends StatelessWidget {
  const Home2ViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          fit: BoxFit.cover,

          width: double.infinity,
          height: MediaQuery.sizeOf(context).height,
          image: AssetImage("lib/cores/assets/images/back1.png"),
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
        customPerson(),

        Positioned(top: 150, left: 50, child: customRow1()),

        Positioned(
          top: 400,
          left: 50,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Details2View()),
              );
            },
            child: custom2Card(name: "Pitaya", price: "£4.95"),
          ),
        ),
        Positioned(
          top: 520,
          left: 170,
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.white,
            child: Icon(color: Colors.black, Icons.arrow_forward),
          ),
        ),

        Positioned(
          top: 400,
          left: 230,
          child: custom2Card(name: "Papaya", price: "£3.90"),
        ),
        Positioned(
          top: 270,
          left: 20,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Details2View()),
              );
            },
            child: Image(
              width: 220,
              height: 220,
              image: AssetImage("lib/cores/assets/images/dragonfruit.png"),
            ),
          ),
        ),
        Positioned(
          top: 520,
          left: 350,
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.white,
            child: Icon(color: Colors.black, Icons.arrow_forward),
          ),
        ),
        Positioned(
          top: 295,
          left: 220,
          child: Image(
            width: 160,
            height: 160,
            image: AssetImage("lib/cores/assets/images/papaya5.png"),
          ),
        ),
        Positioned(top: 600, left: 50, child: customRow2()),

        Positioned(top: 680, left: 50, child: customOfferCard()),
        Positioned(
          top: 750,
          left: 345,
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.white,
            child: Icon(color: Colors.black, Icons.arrow_forward),
          ),
        ),

        Positioned(top: 840, left: 40, child: CustomBottommBar()),
        Positioned(
          top: 810,
          left: 69,
          child: Container(
            child: Icon(size: 35, color: Colors.white, Icons.home),
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Color(0xff606063),
              shape: BoxShape.circle,
            ),
          ),
        ),
        Positioned(
          top: 810,
          left: 170,
          child: Container(
            child: Icon(size: 35, color: Colors.white, Icons.search),
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Color(0xff606063),
              shape: BoxShape.circle,
            ),
          ),
        ),
        Positioned(
          top: 810,
          left: 280,
          child: Container(
            child: Image(
              color: Colors.white,
              width: 60,
              height: 60,
              image: AssetImage("lib/cores/assets/images/crown.png"),
            ),
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Color(0xff606063),
              shape: BoxShape.circle,
            ),
          ),
        ),
      ],
    );
  }
}

class popo extends StatelessWidget {
  const popo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xff222222),
            Color(0xff232323),
            //Color(0xff2b2e2e),
            Color(0xff292929),
            Color(0xff222222),
            Color(0xff232323),
            //Color(0xff2b2e2e),
            Color(0xff292929),
            Color(0xff222222),
            Color(0xff232323),
            //Color(0xff2b2e2e),
            Color(0xff292929),
            Color(0xff222222),
            Color(0xff232323),
            //Color(0xff2b2e2e),
            Color(0xff292929),
            Color(0xff222222),
            Color(0xff232323),
            //Color(0xff2b2e2e),
            Color(0xff292929),
            Color(0xff222222),
            Color(0xff232323),
            //Color(0xff2b2e2e),
            Color(0xff292929), Color(0xff222222),
            Color(0xff232323),
            //Color(0xff2b2e2e),
            Color(0xff292929),
            Color(0xff222222),
            Color(0xff232323),
            //Color(0xff2b2e2e),
            Color(0xff292929),
            Color(0xff222222),
            Color(0xff232323),
            //Color(0xff2b2e2e),
            Color(0xff292929),
            Color(0xff222222),
            Color(0xff232323),
            //Color(0xff2b2e2e),
            Color(0xff292929),
            Color(0xff222222),
            Color(0xff232323),
            //Color(0xff2b2e2e),
            Color(0xff292929),
            Color(0xff222222),
            Color(0xff232323),
            //Color(0xff2b2e2e),
            Color(0xff292929),
            Color(0xff222222),
            Color(0xff232323),
            //Color(0xff2b2e2e),
            Color(0xff292929),
            Color(0xff222222),
            Color(0xff232323),
            //Color(0xff2b2e2e),
            Color(0xff292929),

            Color(0xff222222),
            Color(0xff232323),
            //Color(0xff2b2e2e),
            Color(0xff292929), Color(0xff222222),
            Color(0xff232323),
            //Color(0xff2b2e2e),
            Color(0xff292929),
            Color(0xff222222),
            Color(0xff232323),
            //Color(0xff2b2e2e),
            Color(0xff292929),
            Color(0xff222222),
            Color(0xff232323),
            //Color(0xff2b2e2e),
            Color(0xff292929),
            Color(0xff222222),
            Color(0xff232323),
            //Color(0xff2b2e2e),
            Color(0xff292929),
            Color(0xff222222),
            Color(0xff232323),
            //Color(0xff2b2e2e),
            Color(0xff292929),
            Color(0xff222222),
            Color(0xff232323),
            //Color(0xff2b2e2e),
            Color(0xff292929),
            Color(0xff222222),
            Color(0xff232323),
            //Color(0xff2b2e2e),
            Color(0xff292929),
            Color(0xff222222),
            Color(0xff232323),
            //Color(0xff2b2e2e),
            Color(0xff292929),
            Color(0xff222222),
            Color(0xff232323),
            //Color(0xff2b2e2e),
            Color(0xff292929),
            Color(0xff222222),
            Color(0xff232323),
            //Color(0xff2b2e2e),
            Color(0xff292929),
            Color(0xff222222),
            Color(0xff232323),
            //Color(0xff2b2e2e),
            Color(0xff292929),
            Color(0xff222222),
            Color(0xff232323),
            //Color(0xff2b2e2e),
            Color(0xff292929),
            Color(0xff222222),
            Color(0xff232323),
            //Color(0xff2b2e2e),
            Color(0xff292929),
            Color(0xff313131),
            Color(0xff222222),
            Color(0xff232323),
            //Color(0xff2b2e2e),
            Color(0xff292929),
            Color(0xff222222),
            Color(0xff232323),
            //Color(0xff2b2e2e),
            Color(0xff292929),
            Color(0xff222222),
            Color(0xff232323),
            //Color(0xff2b2e2e),
            Color(0xff292929),
            Color(0xff222222),
            Color(0xff232323),
            //Color(0xff2b2e2e),
            Color(0xff292929),
            Color(0xff222222),
            Color(0xff232323),
            //Color(0xff2b2e2e),
            Color(0xff292929),
          ],
        ),
      ),
    );
  }
}
