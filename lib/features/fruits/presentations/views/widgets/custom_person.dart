import 'package:flutter/material.dart';

class customPerson extends StatelessWidget {
  const customPerson({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -20,
      left: -10,
      child: Container(
        padding: const EdgeInsets.all(1),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Color.fromARGB(255, 192, 206, 177),
        ),
        child: CircleAvatar(
          radius: 100,
          backgroundColor: Color(0xff2c2c2c),
          child: Container(
            padding: const EdgeInsets.all(1),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromARGB(255, 173, 209, 132),
            ),
            child: CircleAvatar(
              radius: 60,
              backgroundColor: Color(0xff2c2c2c),
              child: Container(
                padding: const EdgeInsets.all(2),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.yellow,
                ),
                child: CircleAvatar(
                  foregroundImage: AssetImage(
                    "lib/cores/assets/images/man.jpg",
                  ),
                  backgroundColor: Colors.white,
                  radius: 35,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
