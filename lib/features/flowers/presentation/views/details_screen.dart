import 'package:flutter/material.dart';
import 'package:taske2/features/flowers/data/models/card_model.dart';
import 'package:taske2/features/flowers/presentation/views/widgets/details_screen_body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.cardModel});
  final CardModel cardModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: DetailsScreenBody(cardModel: cardModel),
    );
  }
}
