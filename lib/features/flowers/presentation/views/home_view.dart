import 'package:flutter/material.dart';
import 'package:taske2/cores/widgets/custom_hole.dart';
import 'package:taske2/cores/widgets/custom_lock.dart';
import 'package:taske2/features/flowers/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff166a0a),
        leading: Padding(
          padding: EdgeInsets.only(left: 35),
          child: Icon(
            Icons.keyboard_arrow_left_sharp,
            color: Color(0xff90d986),
            size: 40,
          ),
        ),
        title: Center(
          child: Text(
            "Decorative flowers",

            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 35),
            child: Image(
              width: 40,
              image: AssetImage("lib/cores/assets/images/setting.png"),
            ),
          ),
        ],
      ),
      backgroundColor: Color(0xff166a0a),
      body: Stack(
        children: [
          // GREEN BACKGROUND
          SafeArea(bottom: true, top: true, child: HomeViewBody()),

          // LEFT SHAPE
        ],
      ),
    );
  }
}
