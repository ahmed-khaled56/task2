import 'package:flutter/material.dart';
import 'package:taske2/cores/widgets/custom_bag.dart';
import 'package:taske2/cores/widgets/custom_hill.dart';
import 'package:taske2/cores/widgets/custom_lock.dart';
import 'package:taske2/features/flowers/data/models/card_model.dart';
import 'package:taske2/features/flowers/presentation/views/details_screen.dart';
import 'package:taske2/features/flowers/presentation/views/widgets/custom_card.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  bool isPressed = false;
  @override
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
    return Stack(
      children: [
        Positioned(
          right: 229,
          top: 610,
          child: Transform.rotate(
            angle: 90 * 3.1415926535 / 180,
            child: customHill(
              iconColor: Colors.grey,
              iconSize: 45,
              hieght: 200,
              width: 170,
              icon: Icons.keyboard_arrow_down_rounded,
            ),
          ),
        ),
        Positioned(
          left: 229,
          top: 610,
          child: Transform.rotate(
            angle: -90 * 3.1415926535 / 180,
            child: customHill(
              iconSize: 45,
              hieght: 200,
              width: 170,
              icon: Icons.keyboard_arrow_down_rounded,
            ),
          ),
        ),
        Center(
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
                          child: customCard(cardModel: cardsList[index]),
                        );
                      },
                    ),
                  ),
                ),

                //Row(children: [Spacer()]),
              ],
            ),
          ),
        ),
        customHill(icon: Icons.shopping_bag),
      ],
    );
  }
}
