import 'package:flutter/material.dart';
import 'package:taske2/cores/widgets/custom_bag.dart';
import 'package:taske2/cores/widgets/custom_lock.dart';
import 'package:taske2/features/flowers/data/models/card_model.dart';
import 'package:taske2/features/flowers/presentation/views/widgets/custom_card.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  bool isPressed = false;
  Widget build(BuildContext context) {
    List<CardModel> cardsList = [
      CardModel(
        "Bannan Tree",
        "lib/cores/assets/images/banan.png",
        "£78",
        "2X",
        false,
      ),
      CardModel(
        "Peperomia",
        "lib/cores/assets/images/pep.png",
        "£35",
        "0X",
        true,
      ),
      CardModel(
        "Sanseveria",
        "lib/cores/assets/images/sav.png",
        "£15",
        "1X",

        false,
      ),
      CardModel(
        "Strelitzia",
        "lib/cores/assets/images/strelt.png",
        "£100",
        "6X",

        true,
      ),
    ];
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: ListView.builder(
                  itemCount: cardsList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: customCard(
                        onTap: () {
                          setState(() {
                            isPressed = !isPressed;
                          });
                        },
                        cardModel: cardsList[index],
                      ),
                    );
                  },
                ),
              ),
            ),

            Row(children: [Spacer()]),

            // SizedBox(height: 80),
            SizedBox(
              width: 59,
              height: 49,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomPaint(size: Size(130, 53), painter: BottomNavPainter()),

                  Container(
                    width: 53,
                    height: 53,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.lock, size: 23),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
