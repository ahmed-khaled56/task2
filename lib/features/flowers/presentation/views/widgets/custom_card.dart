import 'package:flutter/material.dart';
import 'package:taske2/cores/widgets/custom_bag.dart';
import 'package:taske2/features/flowers/data/models/card_model.dart';

class customCard extends StatefulWidget {
  customCard({
    super.key,
    required this.cardModel,
    this.onTap,
    this.isPressed = false,
  });
  final CardModel cardModel;
  final void Function()? onTap;
  bool isPressed;
  @override
  State<customCard> createState() => _customCardState();
}

class _customCardState extends State<customCard> {
  @override
  bool isPressed = false;
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isPressed = !isPressed;
        });
      },
      child: Padding(
        padding: EdgeInsets.only(
          bottom: isPressed ? 100 : 10,
          left: isPressed ? 35 : 35,
          right: isPressed ? 0 : 35,
        ),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
          transform: Matrix4.translationValues(
            isPressed ? 80 : 0,
            0,
            isPressed ? 100 : 0,
          ),
          width: isPressed ? 150 : 100,
          height: 130,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
          ),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10, right: isPressed ? 0 : 4),
                child: TweenAnimationBuilder(
                  tween: Tween<double>(begin: 0, end: isPressed ? 1 : 0),
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeOut,
                  builder: (context, value, child) {
                    return Transform.translate(
                      offset: Offset(-55 * value, 40 * value),
                      child: Transform.scale(scale: 1 + value, child: child),
                    );
                  },
                  child: Image.asset(
                    widget.cardModel.imageLink!,
                    height: isPressed ? 200 : 80,
                    width: isPressed ? 100 : 80,
                    fit: BoxFit.contain,
                  ),
                ),
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Color(0xfffbc407),
                        size: isPressed ? 21 : 13,
                      ),
                      Icon(
                        Icons.star,
                        color: Color(0xfffbc407),
                        size: isPressed ? 21 : 13,
                      ),
                      Icon(
                        Icons.star,
                        color: Color(0xfffbc407),
                        size: isPressed ? 21 : 13,
                      ),
                      widget.cardModel.isLess == false
                          ? Icon(
                              Icons.star,
                              color: Color(0xfffbc407),
                              size: isPressed ? 21 : 13,
                            )
                          : Icon(
                              Icons.star,
                              color: Colors.grey,
                              size: isPressed ? 21 : 13,
                            ),
                      Icon(
                        Icons.star,
                        size: isPressed ? 21 : 13,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  Text(
                    widget.cardModel.name!,
                    style: TextStyle(
                      fontSize: isPressed ? 25 : 23,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    widget.cardModel.price!,
                    style: TextStyle(
                      fontSize: isPressed ? 18 : 15,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 25, 225, 32),
                    ),
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.lightGreen,
                        radius: 6,
                        child: Center(child: Icon(Icons.remove, size: 10)),
                      ),
                      SizedBox(width: 2),

                      Text(
                        widget.cardModel.nimber!,

                        style: TextStyle(
                          fontSize: isPressed ? 15 : 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 2),
                      CircleAvatar(
                        backgroundColor: Colors.lightGreen,
                        radius: 6,
                        child: Center(child: Icon(Icons.add, size: 10)),
                      ),
                    ],
                  ),
                ],
              ),
              Expanded(child: SizedBox(width: 10)),
              CustomPaint(
                size: Size(60, 24),
                painter: SmoothCapsulePainter(),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
